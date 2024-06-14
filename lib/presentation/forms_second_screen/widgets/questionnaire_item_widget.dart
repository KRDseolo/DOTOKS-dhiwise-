import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_checkbox_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class QuestionnaireItemWidget extends StatelessWidget {
  QuestionnaireItemWidget({Key? key})
      : super(
          key: key,
        );

  bool disagreeText = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 68.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 9.v),
          Text(
            "수면이나 규칙적인 생활이 안되나요?",
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleSmallPrimary,
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(
              left: 42.h,
              right: 36.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Text(
                    "동의",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsup,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 2.v,
                  ),
                ),
                Spacer(),
                CustomCheckboxButton(
                  width: 65.h,
                  text: "비동의",
                  value: disagreeText,
                  isRightCheck: true,
                  onChange: (value) {
                    disagreeText = value ?? false;
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
