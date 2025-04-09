import 'package:flutter/material.dart';
import 'package:sebha_app/utils/colors/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    primaryColor: AppColors.primaryColor,
  
    iconTheme: IconThemeData(size: 36,
      color: AppColors.primaryColor,),
  );
}
