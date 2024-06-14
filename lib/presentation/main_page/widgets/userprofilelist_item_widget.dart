import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 52.v,
            width: 42.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 42.adaptSize,
                    width: 42.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                      borderRadius: BorderRadius.circular(
                        21.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgOnlydotox3,
                  height: 45.v,
                  width: 38.h,
                  alignment: Alignment.bottomCenter,
                )
              ],
            ),
          ),
          Container(
            width: 78.h,
            margin: EdgeInsets.only(
              left: 23.h,
              top: 5.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "나의 포인트\n",
                    style: CustomTextStyles.titleSmallBluegray900,
                  ),
                  TextSpan(
                    text: "20,321",
                    style: theme.textTheme.headlineSmall,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
