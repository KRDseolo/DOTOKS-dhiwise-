import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
