import 'package:cart_greek_assignment/constant/app_colors.dart';
import 'package:flutter/material.dart';

Widget packageData({image, value, amount, description, cardColor, btnColor}) {
  return SizedBox(
    width: double.infinity,
    child: Card(
      color: cardColor ?? AppColors.pinkColor,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 8, top: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  image,
                  width: 25,
                  height: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: btnColor ?? AppColors.textPinkColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 1.0,
                    ),
                    onPressed: () {},
                    child: const Text('Book Now')),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.textBlueColor),
                  ),
                  Text(
                    '\u{20B9}${amount}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: AppColors.textBlueColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              description,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: AppColors.textGreyColor),
            ),
            const SizedBox(
              height: 19,
            ),
          ],
        ),
      ),
    ),
  );
}
