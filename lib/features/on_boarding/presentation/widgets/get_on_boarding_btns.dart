import 'package:chat_app/core/cache/cache_helper.dart';
import 'package:chat_app/core/services/service_locator.dart';
import 'package:chat_app/core/utils/app_styles.dart';
import 'package:chat_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

getOnBoardingBtns(context, currentIndex) {
  if (currentIndex == onBoardingList.length - 1) {
    return GestureDetector(
      onTap: () async {
        await getIt<AppCache>()
            .setData(key: "sharedPreOnBoarding", value: true)
            .then(
              (value) => {
                Navigator.pushReplacementNamed(context, "SignIn"),
              },
            );
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: ShapeDecoration(
          color: const Color(0xFF6D67E4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Start',
          textAlign: TextAlign.center,
          style: CustomTextStyle.poppinsStyle16.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  } else if (currentIndex == 0) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.center,
          width: 125,
          height: 60,
          decoration: ShapeDecoration(
            color: const Color(0xFF6D67E4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Next',
            textAlign: TextAlign.center,
            style: CustomTextStyle.poppinsStyle16.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: const Color(0xFF6D67E4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 125,
          height: 60,
          decoration: ShapeDecoration(
            color: const Color(0xFF6D67E4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Next',
            textAlign: TextAlign.center,
            style: CustomTextStyle.poppinsStyle16.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
