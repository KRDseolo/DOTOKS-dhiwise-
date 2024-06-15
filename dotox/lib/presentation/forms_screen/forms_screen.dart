import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../forms_first_screen/forms_first_screen.dart'; // forms_first_screen을 import 합니다.

class FormsScreen extends StatelessWidget {
  const FormsScreen({Key? key})
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
              Spacer(
                flex: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 266.h,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    right: 88.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "먼저 중독 상태를 알아볼게요\n\n설문에 응답하면 ",
                          style: CustomTextStyles.headlineSmallBlack90024,
                        ),
                        TextSpan(
                          text: "Ai",
                          style: CustomTextStyles.headlineSmallPrimary,
                        ),
                        TextSpan(
                          text: "가 \n자동으로 계획을 추천해 줘요\n\n그럼, 시작해 볼까요?",
                          style: CustomTextStyles.headlineSmallBlack90024,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Spacer(
                flex: 32,
              ),
              CustomElevatedButton(
                text: "시작하기",
                onPressed: () {
                  onStartButtonPressed(context);
                },
              ),
              SizedBox(height: 38.v),
              Text(
                "자주 묻는 질문들",
                style: theme.textTheme.titleMedium,
              ),
              Spacer(
                flex: 46,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the formsFirstScreen when the action is triggered.
  void onStartButtonPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormsFirstScreen()),
    );
  }
}
