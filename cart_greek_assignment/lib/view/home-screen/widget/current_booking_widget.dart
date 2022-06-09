import 'package:cart_greek_assignment/constant/app_colors.dart';
import 'package:cart_greek_assignment/constant/app_image_path.dart';
import 'package:cart_greek_assignment/constant/app_strings.dart';
import 'package:flutter/material.dart';

Widget currentBooking({date, date1, time, time1}) {
  return Card(
    elevation: 1,
    child: Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppString.oneDayPackage,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.textPinkColor),
              ),
              SizedBox(
                width: 100,
                height: 22,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.textPinkColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 1.0,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Start',
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Form',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.textColor),
                  ),
                  value(image: AppImagePath.calender, value: date),
                  const SizedBox(
                    height: 12,
                  ),
                  value(image: AppImagePath.clock, value: time),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'To',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.textColor),
                  ),
                  value(image: AppImagePath.calender, value: date1),
                  const SizedBox(
                    height: 12,
                  ),
                  value(image: AppImagePath.clock, value: time1),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 90,
                height: 25,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.textBlueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 1.0,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImagePath.star,
                        height: 12,
                        width: 12,
                        fit: BoxFit.fill,
                        color: AppColors.whiteColor,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          'Rate Us',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 9,
                              color: AppColors.whiteColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 25,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.textBlueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 1.0,
                  ),
                  onPressed: () {},
                  child: value(
                      image: AppImagePath.location,
                      value: 'GeoLocation',
                      textStyle: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteColor),
                      color: AppColors.whiteColor),
                ),
              ),
              SizedBox(
                width: 100,
                height: 25,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.textBlueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 1.0,
                  ),
                  onPressed: () {},
                  child: value(
                      image: AppImagePath.radio,
                      value: 'Survillence',
                      textStyle: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteColor),
                      color: AppColors.whiteColor),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    ),
  );
}

Widget value({image, value, hegiht, width, textStyle, color}) {
  return Row(
    children: [
      Image.asset(
        image,
        height: hegiht ?? 12,
        width: width ?? 12,
        fit: BoxFit.fill,
        color: color ?? AppColors.textPinkColor,
      ),
      const SizedBox(
        width: 4,
      ),
      Text(
        value,
        style: textStyle ??
            const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.textColor),
      )
    ],
  );
}
