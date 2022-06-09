import 'package:cart_greek_assignment/constant/app_colors.dart';
import 'package:cart_greek_assignment/constant/app_image_path.dart';
import 'package:cart_greek_assignment/constant/app_strings.dart';
import 'package:cart_greek_assignment/view/home-screen/contolller/home_controller.dart';
import 'package:cart_greek_assignment/view/home-screen/widget/current_booking_widget.dart';
import 'package:cart_greek_assignment/view/home-screen/widget/package_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PackageController>(
        init: PackageController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.whiteColor,
            body:  controller.getDataResponseModel != null
                ? SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 30, top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    personProfile(),
                    bookNowUI(),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              AppString.yourCurrentBooking,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: AppColors.textBlueColor),
                            ),
                          ),
                          currentBooking(
                              date: controller.getDataResponseModel
                                  ?.currentBookings?.fromDate,
                              date1: controller.getDataResponseModel
                                  ?.currentBookings?.toDate,
                              time1: controller.getDataResponseModel
                                  ?.currentBookings?.toTime,
                              time: controller.getDataResponseModel
                                  ?.currentBookings?.fromTime),
                          const SizedBox(
                            height: 16,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              AppString.packages,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: AppColors.textBlueColor),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: ListView.builder(
                        itemCount: controller
                            .getDataResponseModel?.packages?.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return packageData(
                              image: controller.getDataResponseModel
                                  ?.packages![index].packageName ==
                                  'One Day Package'
                                  ? AppImagePath.oneDay
                                  : controller
                                  .getDataResponseModel
                                  ?.packages![index]
                                  .packageName ==
                                  'Three Day Package'
                                  ? AppImagePath.threeDay
                                  : controller
                                  .getDataResponseModel
                                  ?.packages![index]
                                  .packageName ==
                                  'Five Day Package'
                                  ? AppImagePath.fiveDay
                                  : AppImagePath.weekDay,
                              btnColor: index % 2 == 0
                                  ? const Color(0xffE36DA6)
                                  : const Color(0xff0098D0),
                              cardColor: index % 2 == 0
                                  ? AppColors.pinkColor
                                  : const Color(0xff80ABDB),
                              value: controller.getDataResponseModel
                                  ?.packages![index].packageName,
                              amount: controller.getDataResponseModel
                                  ?.packages![index].price,
                              description: controller.getDataResponseModel
                                  ?.packages![index].description);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
                : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.whiteColor,
              ),
            ),
          );
        });
  }

  Widget personProfile() {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Row(
        children: [
          Container(
            height: 53,
            width: 53,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.pinkColor, width: 1),
              color: const Color(0xFFe0f2f1),
              image: const DecorationImage(
                image: AssetImage(AppImagePath.profile),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                AppString.welcome,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: AppColors.textColor),
              ),
              Text(
                'Emily Cyrus',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: AppColors.textPinkColor),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget bookNowUI() {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 220,
          ),
          Positioned(
            top: 25,
            bottom: 25,
            right: 30,
            left: 0,
            child: SizedBox(
              height: 190,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: AppColors.pinkColor,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nanny And ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColors.textBlueColor),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        'Babysitting Services ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColors.textBlueColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 25,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.textBlueColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              elevation: 1.0,
                            ),
                            onPressed: () {},
                            child: const Text('Book Now')),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(
              AppImagePath.person,
              fit: BoxFit.fill,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
