import 'package:chat_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class CustomTextStyle {
  static TextStyle odorMeanCheyStyle64 = GoogleFonts.odorMeanChey(
    color: const Color(0xffFFFFFF),
    fontSize: 64,
    fontWeight: FontWeight.w400,
  );
  static TextStyle poppinsStyle16 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle poppinsStyle17 = GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static TextStyle poppinsStyle24 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppinsStyle28 = GoogleFonts.poppins(
    color: AppColors.primary,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
}
