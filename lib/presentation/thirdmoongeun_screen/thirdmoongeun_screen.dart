import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class ThirdmoongeunScreen extends StatelessWidget {
  const ThirdmoongeunScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Column(
            children: [
              _buildStackIphoneStatus(context),
              SizedBox(height: 29.v),
              Divider(
                indent: 11.h,
                endIndent: 10.h,
              ),
              SizedBox(height: 10.v),
              Text(
                "뭉근",
                style: theme.textTheme.headlineSmall,
              ),
              CustomImageView(
                imagePath: ImageConstant.img12,
                height: 338.v,
                width: 159.h,
              ),
              SizedBox(height: 21.v),
              Container(
                height: 11.v,
                width: 144.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray900.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(
                    72.h,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              _buildColumn3Level(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackIphoneStatus(BuildContext context) {
    return SizedBox(
      height: 96.v,
      width: 360.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 14.v,
              width: 345.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "포인트 전환",
              style: theme.textTheme.labelLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDotox1,
            height: 71.v,
            width: 65.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 11.v),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 14.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPerson24dpFil,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(top: 3.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse13,
                    height: 43.v,
                    width: 45.h,
                    radius: BorderRadius.circular(
                      21.h,
                    ),
                    margin: EdgeInsets.only(left: 15.h),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn3Level(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "3 ",
                  style: theme.textTheme.headlineSmall,
                ),
                TextSpan(
                  text: "레벨",
                  style: theme.textTheme.titleLarge,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 21.h,
            ),
            child: Container(
              height: 11.v,
              width: 308.h,
              decoration: BoxDecoration(
                color: appTheme.blue50,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.98,
                  backgroundColor: appTheme.blue50,
                ),
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Divider(),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 21.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 23.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 9.v),
                        Text(
                          "0 개",
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 10.v),
                        CustomImageView(
                          imagePath: ImageConstant.img50x50,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "물 주기",
                          style: CustomTextStyles.titleSmallBluegray900Bold,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 23.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 37.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 11.v),
                        Text(
                          "0 개",
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 13.v),
                        CustomImageView(
                          imagePath: ImageConstant.img49x39,
                          height: 49.v,
                          width: 39.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "사료 주기",
                          style: CustomTextStyles.titleSmallBluegray900Bold,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
