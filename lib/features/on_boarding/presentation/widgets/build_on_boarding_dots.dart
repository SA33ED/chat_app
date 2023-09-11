import 'package:chat_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

Container buildDots(index, currentIndex) {
  return Container(
    width: index == currentIndex ? 38 : 11,
    height: 10,
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: index == currentIndex ? AppColors.primary : AppColors.gray,
    ),
  );
}
