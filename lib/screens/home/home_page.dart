import 'package:flutter/material.dart';
import 'package:sebha_app/utils/colors/app_colors.dart';
import 'package:sebha_app/utils/constants/app_constants.dart';
import 'package:sebha_app/utils/styles/app_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  String _currentTasbeeh = AppConstants.tasbih[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),

            Text(
              "السبحة الالكترونية",
              style: AppStyles.titleTextStyle
            ),

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    _currentTasbeeh,
                    style: AppStyles.titleTextStyle
                  ),
                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: _resetCounter,
                        icon: const Icon(Icons.refresh, color: AppColors.primaryColor),
                      ),
                      IconButton(
                        onPressed: _openTasbeehSelector,
                        icon: const Icon(Icons.menu, color: AppColors.primaryColor),
                      ),
                     
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            GestureDetector(
              onTap: _incrementCounter,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: AppColors.primaryColor.withOpacity(0.2),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: AppColors.primaryColor,
                  child: Text(
                    _counter.toString(),
                    style: AppStyles.subTitleTextStyle
                  ),
                ),
              ),
            ),

            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
     
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _changeTasbeeh(String newTasbeeh) {
    setState(() {
      _currentTasbeeh = newTasbeeh;
      _counter = 0;
    });
    Navigator.pop(context);
  }

  

  void _openTasbeehSelector() {
    showModalBottomSheet(
      backgroundColor: AppColors.scaffoldColor,
      context: context,
      builder: (context) => ListView.builder(
        itemCount: AppConstants.tasbih.length,
        itemBuilder: (context, index) {
          final tasbeeh = AppConstants.tasbih[index];
          return TextButton(
            onPressed: () => _changeTasbeeh(tasbeeh),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  tasbeeh,
                  style: AppStyles.titleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
