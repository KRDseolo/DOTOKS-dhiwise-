import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_checkbox_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Questionnaire1ItemWidget extends StatelessWidget {
  Questionnaire1ItemWidget({Key? key})
      : super(
          key: key,
        );

  bool agreeCheckbox = false;

  bool disagreeCheckbo = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 105.h,
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
            "취미가 대체되나요?",
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleSmallPrimary,
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckboxButton(
                  width: 51.h,
                  text: "동의",
                  value: agreeCheckbox,
                  isRightCheck: true,
                  onChange: (value) {
                    agreeCheckbox = value ?? false;
                  },
                ),
                CustomCheckboxButton(
                  width: 65.h,
                  text: "비동의",
                  value: disagreeCheckbo,
                  isRightCheck: true,
                  onChange: (value) {
                    disagreeCheckbo = value ?? false;
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
