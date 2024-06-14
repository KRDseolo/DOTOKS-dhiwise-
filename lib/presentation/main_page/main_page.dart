import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/userprofilelist_item_widget.dart'; // ignore_for_file: must_be_immutable

class MainPage extends StatelessWidget {
  const MainPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            children: [
              Container(
                height: 14.v,
                width: 345.h,
                decoration: BoxDecoration(
                  color: appTheme.gray100,
                ),
              ),
              SizedBox(height: 75.v),
              _buildTodayChallengeColumn(context),
              SizedBox(height: 20.v),
              _buildAverageAppUsageColumn(context),
              SizedBox(height: 24.v),
              _buildUserProfileList(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 85.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgDotox1,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCarrotIllustrationFreePng,
          margin: EdgeInsets.only(
            left: 13.h,
            right: 24.h,
          ),
          onTap: () {
            onTapCarrotone(context);
          },
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse13,
          margin: EdgeInsets.fromLTRB(14.h, 4.v, 37.h, 1.v),
          onTap: () {
            onTapCircleimage(context);
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildTodayChallengeColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: _buildTodayAppUsageRow(
              context,
              appUsageText: "오늘의 챌린지︎",
              onTapArrowforwardi: () {
                onTapArrowforwardi(context);
              },
            ),
          ),
          SizedBox(height: 25.v),
          SizedBox(
            width: 333.h,
            child: Text(
              "“오늘이 당신의 인생에서 가장 늦지 않은 때입니다.”\n ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallMaruBuriOTFBluegray900,
            ),
          ),
          SizedBox(height: 51.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAverageAppUsageColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildTodayAppUsageRow(
              context,
              appUsageText: "오늘 앱 사용량",
              onTapArrowforwardi: () {
                onTapArrowforwardi1(context);
              },
            ),
          ),
          SizedBox(height: 29.v),
          Row(
            children: [
              Container(
                height: 51.v,
                width: 42.h,
                margin: EdgeInsets.only(top: 1.v),
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
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "하루 평균 사용량",
                      style: CustomTextStyles.titleSmallBluegray900Bold14,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "27분",
                      style: CustomTextStyles.titleLarge23,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 17.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return UserprofilelistItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildTodayAppUsageRow(
    BuildContext context, {
    required String appUsageText,
    Function? onTapArrowforwardi,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          appUsageText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowForwardI16x16,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 8.v,
          ),
          onTap: () {
            onTapArrowforwardi?.call();
          },
        )
      ],
    );
  }

  /// Navigates to the firstmoongeunScreen when the action is triggered.
  onTapCarrotone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.firstmoongeunScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapCircleimage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the challengeScreen when the action is triggered.
  onTapArrowforwardi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.challengeScreen);
  }

  /// Navigates to the appusageScreen when the action is triggered.
  onTapArrowforwardi1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appusageScreen);
  }
}
