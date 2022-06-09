import 'package:cart_greek_assignment/constant/app_colors.dart';
import 'package:cart_greek_assignment/constant/app_image_path.dart';
import 'package:cart_greek_assignment/view/home-screen/contolller/home_controller.dart';
import 'package:cart_greek_assignment/view/home-screen/home_screen.dart';
import 'package:cart_greek_assignment/view/home-screen/widget/drawer_widget.dart';
import 'package:cart_greek_assignment/view/tab_bar_screen/tab_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PackageController>(
        init: PackageController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.whiteColor,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: AppBar(
                centerTitle: true,
                backgroundColor: AppColors.whiteColor,
                elevation: 0,
                iconTheme: const IconThemeData(
                  size: 28, //change size on your need
                  color: AppColors.textPinkColor, //change color on your need
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: GestureDetector(
                      onTap: () {
                        controller.drawerOpenCloseValid();
                      },
                      child: Image.asset(
                        AppImagePath.drawer,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  )
                ],
              ),
            ),
            body: controller.getDataResponseModel != null
                ? Row(
                    children: [
                      Obx(
                        () => Visibility(
                          visible: controller.isDrawerOpen.value,
                          child: Stack(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                              const DrawerWidget(),
                              const SizedBox(
                                width: 10,
                              ),
                              Positioned(
                                  left: MediaQuery.of(context).size.width / 1.6,
                                  top: 20,
                                  bottom: 0,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(bottom: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: kElevationToShadow[2], // Use This kElevationToShadow ***********
                                    ),
                                    child: TabBarScreen(),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Obx(() => Visibility(
                          visible: controller.isDrawerClose.value,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child:const TabBarScreen() ,
                          )))
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.textPinkColor,
                    ),
                  ),
          );
        });
  }
}
