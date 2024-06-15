import 'package:flutter/material.dart';
import 'dart:async';
import '../../core/app_export.dart';
import '../result_screen/result_screen.dart'; // result_screen을 import 합니다.

class WaitScreen extends StatelessWidget {
  const WaitScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    // Timer를 사용하여 1.5초 후에 ResultScreen으로 이동
    Timer(Duration(seconds: 1, milliseconds: 500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ResultScreen()),
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
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 289.h,
                  margin: EdgeInsets.only(
                    left: 46.h,
                    right: 8.h,
                  ),
                  child: Text(
                    "알맞은 코스를\n생성하는 중입니다...",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
              ),
              SizedBox(height: 56.v),
              Text(
                "1코스 확인하기",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 58.v),
              Text(
                "2코스 확인하기",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 58.v),
              Text(
                "3코스 확인하기",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 57.v),
              Text(
                "중독 등급 확인하기",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 80.v)
            ],
          ),
        ),
      ),
    );
  }
}
