import 'package:flutter/material.dart';
import 'dart:async';
import '../../core/app_export.dart'; // 필요에 따라 app_export 파일을 import 합니다.
import '../log_in_screen/log_in_screen.dart'; // log_in_screen.dart 파일을 import 합니다.

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    // Timer를 사용하여 2.25초 후에 log_in_screen으로 이동
    Timer(Duration(seconds: 2, milliseconds: 250), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LogInScreen()),
      );
    });

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              Container(
                height: 14.v,
                width: 345.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA70001,
                ),
              ),
              Spacer(
                flex: 45,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgDotox,
                height: 194.v,
                width: 310.h,
              ),
              Spacer(
                flex: 54,
              )
            ],
          ),
        ),
      ),
    );
  }
}
