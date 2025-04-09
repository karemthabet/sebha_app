import 'package:flutter/material.dart';
import 'package:sebha_app/screens/home/home_page.dart';
import 'package:sebha_app/utils/theme/app_theme.dart';

void main()
{
  runApp(SebhaApp());
}
class SebhaApp extends StatelessWidget {
  const SebhaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}