import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../main_page/main_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MaintwinscreenScreen extends StatelessWidget {
  MaintwinscreenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Column(
                children: [
                  Container(
                    height: 14.v,
                    width: 345.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                    ),
                  ),
                  _buildRowDotoxoneOne(context),
                  SizedBox(height: 7.v),
                  _buildColumnTodayChallenge(context),
                  SizedBox(height: 24.v),
                  _buildStackTodayAppUsage(context),
                  SizedBox(height: 26.v),
                  _buildRowViewOne(context)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowDotoxoneOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDotox1,
            height: 71.v,
            width: 65.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCarrotIllustrationFreePng,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  onTap: () {
                    onTapImgCarrotone(context);
                  },
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse13,
                  height: 43.v,
                  width: 45.h,
                  radius: BorderRadius.circular(
                    21.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 14.h,
                    top: 4.v,
                  ),
                  onTap: () {
                    onTapImgCircleimage(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnTodayChallenge(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: _buildRowTodayAppUsage(
              context,
              appUsageText: "오늘의 챌린지︎",
              onTapArrowforwardi: () {
                onTapArrowforwardi(context);
              },
            ),
          ),
          SizedBox(height: 25.v),
          Container(
            width: 333.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Text(
              "“오늘이 당신의 인생에서 가장 늦지 않은 때입니다.”\n ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallMaruBuriOTFBluegray900,
            ),
          ),
          SizedBox(height: 51.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "스마트폰 사용 2시간 미만",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "산책 30분 다녀오기",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              "스마트폰 30분간 내려두기",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "뭉근 물 주기",
              style: CustomTextStyles.titleMediumBlack900,
            ),
          ),
          SizedBox(height: 14.v),
          CustomImageView(
            imagePath: ImageConstant.img,
            height: 14.v,
            width: 74.h,
            margin: EdgeInsets.only(left: 14.h),
          ),
          SizedBox(height: 13.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackTodayAppUsage(BuildContext context) {
    return SizedBox(
      height: 640.v,
      width: 367.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 3.h),
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
                    child: _buildRowTodayAppUsage(
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
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 45.v,
                                width: 38.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgOnlydotox3,
                                      height: 45.v,
                                      width: 38.h,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgOnlydotox3,
                                      height: 45.v,
                                      width: 38.h,
                                      alignment: Alignment.center,
                                    )
                                  ],
                                ),
                              ),
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
                              style:
                                  CustomTextStyles.titleSmallBluegray900Bold14,
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
                  SizedBox(height: 29.v)
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img11,
            height: 426.v,
            width: 367.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 63.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowViewOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.h),
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

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildRowTodayAppUsage(
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
        Opacity(
          opacity: 0.9,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowForwardI,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 8.v,
            ),
            onTap: () {
              onTapArrowforwardi?.call();
            },
          ),
        )
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Person24dpfil:
        return AppRoutes.mainPage;
      case BottomBarEnum.Barchart24dp:
        return "/";
      case BottomBarEnum.Settings24dpf:
        return "/";
      case BottomBarEnum.Notifications2:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the firstmoongeunScreen when the action is triggered.
  onTapImgCarrotone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.firstmoongeunScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImgCircleimage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the appusageScreen when the action is triggered.
  onTapArrowforwardi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appusageScreen);
  }

  /// Navigates to the challengeScreen when the action is triggered.
  onTapArrowforwardi1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.challengeScreen);
  }
}
