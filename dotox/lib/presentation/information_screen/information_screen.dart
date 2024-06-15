import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../result_screen/result_screen.dart'; // result_screen을 import 합니다.

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 9.h),
          child: Column(
            children: [
              Container(
                height: 14.v,
                width: 345.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA70001,
                ),
              ),
              SizedBox(height: 47.v),
              _buildStackDescription(context),
              Spacer(
                flex: 38,
              ),
              CustomElevatedButton(
                text: "돌아가기",
                buttonStyle: CustomButtonStyles.fillGray,
                onPressed: () {
                  onTaptf(context);
                },
              ),
              Spacer(
                flex: 61,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackDescription(BuildContext context) {
    return SizedBox(
      height: 408.v,
      width: 367.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 367.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "5등급 - 심각\n",
                      style: CustomTextStyles.titleLargePrimaryContainer,
                    ),
                    TextSpan(
                      text:
                          "도톡스를 당장 시작해야하는 등급이에요. \n일반적으로 스마트폰 중독을 진단 받았을 가능성이 높아요.\n\n",
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    TextSpan(
                      text: "4등급 - 위험\n",
                      style: CustomTextStyles.titleLargeRed500,
                    ),
                    TextSpan(
                      text:
                          "도톡스를 시작하는것이 강력하게 권장되는 등급이에요. \n스마트폰 중독을 진단받았거나, 디지털 기기에 대한 의존이 너무 심할 수 있어요.\n\n",
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    TextSpan(
                      text: "3등급 - 잠재적 위험\n",
                      style: CustomTextStyles.titleLargeAmber500,
                    ),
                    TextSpan(
                      text:
                          "도톡스를 시작하는것이 권장되는 등급이에요. 디지털 기기에 대한 중독이 있을 수 있고, 언제든지 4등급 5등급으로 떨어질 위험이 있어요.\n\n",
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    TextSpan(
                      text: "2등급 - 주의\n",
                      style: CustomTextStyles.titleLargeLightgreen600,
                    ),
                    TextSpan(
                      text: "도톡스를 시작하면 좋은 등급이에요.  디지털 기기에 대한 중독이 적은 편이에요.\n\n",
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    TextSpan(
                      text: "1등급 - 안전\n",
                      style: CustomTextStyles.titleLargePrimary,
                    ),
                    TextSpan(
                      text: "도톡스를 완료했거나 중독에서 완전히 벗어난 등급이에요.\n",
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                    TextSpan(
                      text: "\n",
                      style: CustomTextStyles.titleLargeAmber500,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgInbox,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 162.h,
              top: 183.v,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the resultScreen when the action is triggered.
  void onTaptf(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen()),
    );
  }
}
