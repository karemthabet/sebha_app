import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha_app/utils/colors/app_colors.dart';

class AppStyles {
  static  TextStyle titleTextStyle = GoogleFonts.poppins(
    
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor
  );
  static  TextStyle subTitleTextStyle = GoogleFonts.montserrat(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor
  );
}