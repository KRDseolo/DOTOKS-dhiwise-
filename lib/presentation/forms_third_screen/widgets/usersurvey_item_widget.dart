import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_checkbox_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UsersurveyItemWidget extends StatelessWidget {
  UsersurveyItemWidget({Key? key})
      : super(
          key: key,
        );

  bool option1 = false;

  bool option4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 51.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.v),
          Text(
            "게임에 많은 시간을 소비하시나요?",
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleSmallPrimary,
          ),
          SizedBox(height: 26.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomCheckboxButton(
                    width: 50.h,
                    text: "적음",
                    value: option1,
                    isRightCheck: true,
                    onChange: (value) {
                      option1 = value ?? false;
                    },
                  ),
                  Spacer(
                    flex: 53,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.v),
                    child: Text(
                      "중간",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsup,
                    height: 20.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      top: 2.v,
                    ),
                  ),
                  Spacer(
                    flex: 46,
                  ),
                  CustomCheckboxButton(
                    width: 57.h,
                    text: "많음",
                    value: option4,
                    isRightCheck: true,
                    onChange: (value) {
                      option4 = value ?? false;
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
