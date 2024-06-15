import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../main_page/main_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppusageScreen extends StatelessWidget {
  AppusageScreen({Key? key})
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
            child: SizedBox(
              height: 1143.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
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
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
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
                            child: _buildRowOne(
                              context,
                              one: "오늘 앱 사용량",
                              arrowforwardi: ImageConstant.imgArrowForwardI,
                              onTapArrowforwardi: () {
                                onTapArrowforwardi(context);
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
                                    _buildStackonlydotoxt(context)
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 23.h,
                                    bottom: 3.v,
                                  ),
                                  child: _buildColumn(
                                    context,
                                    one: "하루 평균 사용량",
                                    twentysevenOne: "27분",
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 29.v)
                        ],
                      ),
                    ),
                  ),
                  _buildColumn2(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgDotox1,
                    height: 71.v,
                    width: 65.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 11.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img11,
                    height: 426.v,
                    width: 367.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 291.v),
                  ),
                  _buildRowviewone(context),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      decoration: AppDecoration.fillGray,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildStackiphonestat(context),
                          SizedBox(height: 7.v),
                          _buildColumn3(context),
                          SizedBox(height: 20.v),
                          SizedBox(
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
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder17,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 1.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "오늘 앱 사용량",
                                                style: theme
                                                    .textTheme.headlineSmall,
                                              ),
                                              Opacity(
                                                opacity: 0.9,
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowForwardI,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    top: 5.v,
                                                    bottom: 8.v,
                                                  ),
                                                ),
                                              )
                                            ],
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
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                      height: 42.adaptSize,
                                                      width: 42.adaptSize,
                                                      decoration: BoxDecoration(
                                                        color: appTheme.blue50,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          21.h,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      height: 45.v,
                                                      width: 38.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgOnlydotox3,
                                                            height: 45.v,
                                                            width: 38.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgOnlydotox3,
                                                            height: 45.v,
                                                            width: 38.h,
                                                            alignment: Alignment
                                                                .center,
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "하루 평균 사용량",
                                                    style: CustomTextStyles
                                                        .titleSmallBluegray900Bold14,
                                                  ),
                                                  SizedBox(height: 4.v),
                                                  Text(
                                                    "27분",
                                                    style: CustomTextStyles
                                                        .titleLarge23,
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
                          ),
                          SizedBox(height: 24.v),
                          _buildRowviewthree(context),
                          SizedBox(height: 76.v),
                          _buildRowperson24dpfi(context)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: _buildBottombar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn2(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 14.h,
          top: 89.v,
          right: 14.h,
        ),
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
            SizedBox(height: 99.v),
            Text(
              "오늘의 챌린지︎",
              style: theme.textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowviewone(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.fromLTRB(13.h, 939.v, 16.h, 116.v),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildStackiphonestat(BuildContext context) {
    return SizedBox(
      height: 82.v,
      width: 360.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
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
          CustomImageView(
            imagePath: ImageConstant.imgDotox1,
            height: 71.v,
            width: 65.h,
            alignment: Alignment.bottomLeft,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 10.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
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
                    imagePath: ImageConstant.imgEllipse11,
                    height: 43.v,
                    width: 45.h,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      top: 4.v,
                    ),
                    onTap: () {
                      onTapImgImageone(context);
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

  /// Section Widget
  Widget _buildColumn3(BuildContext context) {
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
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: _buildRowOne(
              context,
              one: "오늘의 챌린지︎",
              arrowforwardi: ImageConstant.imgArrowForwardI16x16,
              onTapArrowforwardi: () {
                onTapArrowforwardi1(context);
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
  Widget _buildRowviewthree(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
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
  Widget _buildRowperson24dpfi(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowperson24dpfi(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder21,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPerson24dpFil,
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgBarChart24dp,
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSettings24dpF,
              height: 36.v,
              width: 37.h,
              margin: EdgeInsets.only(
                top: 4.v,
                bottom: 2.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgNotifications2,
              height: 38.adaptSize,
              width: 38.adaptSize,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 1.v,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildRowOne(
    BuildContext context, {
    required String one,
    required String arrowforwardi,
    Function? onTapArrowforwardi,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          one,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        CustomImageView(
          imagePath: arrowforwardi,
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

  /// Common widget
  Widget _buildStackonlydotoxt(BuildContext context) {
    return SizedBox(
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
    );
  }

  /// Common widget
  Widget _buildColumn(
    BuildContext context, {
    required String one,
    required String twentysevenOne,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          one,
          style: CustomTextStyles.titleSmallBluegray900Bold14.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          twentysevenOne,
          style: CustomTextStyles.titleLarge23.copyWith(
            color: appTheme.blueGray900,
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

  /// Navigates to the containerScreen when the action is triggered.
  onTapArrowforwardi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }

  /// Navigates to the firstmoongeunScreen when the action is triggered.
  onTapImgCarrotone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.firstmoongeunScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImgImageone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the maintwinscreenScreen when the action is triggered.
  onTapArrowforwardi1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.maintwinscreenScreen);
  }

  /// Navigates to the alarmScreen when the action is triggered.
  onTapRowperson24dpfi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.alarmScreen);
  }
}
