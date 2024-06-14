import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              Container(
                height: 14.v,
                width: 345.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA70001,
                ),
              ),
              SizedBox(height: 53.v),
              GestureDetector(
                onTap: () {
                  onTapTxttf(context);
                },
                child: Container(
                  width: 333.h,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    right: 21.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "중독 상태 점검을 끝냈어요\n",
                          style: theme.textTheme.headlineMedium,
                        ),
                        TextSpan(
                          text: "\n설문과 스크린타임을 분석한 결과\n",
                          style: theme.textTheme.headlineMedium,
                        ),
                        TextSpan(
                          text: "\nuser506 님의 중독 등급은 \n",
                          style: theme.textTheme.headlineMedium,
                        ),
                        TextSpan(
                          text: "3등급 ",
                          style: CustomTextStyles.headlineMediumAmber500,
                        ),
                        TextSpan(
                          text: "으로\n\n",
                          style: theme.textTheme.headlineMedium,
                        ),
                        TextSpan(
                          text: "잠재적 위험 등급이에요\n",
                          style: theme.textTheme.headlineMedium,
                        ),
                        TextSpan(
                          text: "\nuser506 님을 위한  특별한 코스를 준비했어요",
                          style: theme.textTheme.headlineMedium,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Spacer(
                flex: 48,
              ),
              CustomElevatedButton(
                text: "코스 시작하기",
                onPressed: () {
                  onTaptf(context);
                },
              ),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                text: "중독 등급 자세히 보기",
                buttonStyle: CustomButtonStyles.fillGray,
                onPressed: () {
                  onTaptf1(context);
                },
              ),
              Spacer(
                flex: 51,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the containerScreen when the action is triggered.
  onTapTxttf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }

  /// Navigates to the containerScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }

  /// Navigates to the informationScreen when the action is triggered.
  onTaptf1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.informationScreen);
  }
}
