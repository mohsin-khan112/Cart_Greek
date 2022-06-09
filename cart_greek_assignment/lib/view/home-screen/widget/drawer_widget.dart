import 'package:cart_greek_assignment/constant/app_colors.dart';
import 'package:cart_greek_assignment/constant/app_image_path.dart';
import 'package:cart_greek_assignment/view/home-screen/contolller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PackageController>(
        init: PackageController(),
        builder: (controller) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.drawerOpenCloseValid();
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: AppColors.pinkColor, width: 1),
                              color: const Color(0xFFe0f2f1),
                              image: const DecorationImage(
                                image: AssetImage(AppImagePath.profile),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Emily Cyrus',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: AppColors.textPinkColor),
                          ),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: MediaQuery.of(context).size.width / 2,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: const Text("Home"),
                          onTap: () {
                            controller.drawerOpenCloseValid();
                          },
                        ),
                        Divider(height: 2, color: Colors.grey[400]),
                        ListTile(
                          title: const Text("Book A Nanny"),
                          onTap: () {
                            controller.drawerOpenCloseValid();
                          },
                        ),
                        Divider(height: 2, color: Colors.grey[400]),
                        ListTile(
                          title: const Text("How it Works "),
                          onTap: () {
                            controller.drawerOpenCloseValid();
                          },
                        ),
                        Divider(height: 2, color: Colors.grey[400]),
                        ListTile(
                          title: const Text("Why Nanny Vanny "),
                          onTap: () {
                            controller.drawerOpenCloseValid();
                          },
                        ),
                        Divider(height: 2, color: Colors.grey[400]),
                        ListTile(
                          title: const Text("My Bookings "),
                          onTap: () {
                            controller.drawerOpenCloseValid();
                          },
                        ),
                        Divider(height: 2, color: Colors.grey[400]),
                        ListTile(
                          title: const Text("My Profile "),
                          onTap: () {
                            controller.drawerOpenCloseValid();
                          },
                        ),
                        Divider(height: 2, color: Colors.grey[400]),
                        ListTile(
                          title: const Text("Support "),
                          onTap: () {
                            controller.drawerOpenCloseValid();
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
