import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../main_page/main_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RankScreen extends StatelessWidget {
  RankScreen({Key? key})
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
              padding: EdgeInsets.symmetric(horizontal: 13.h),
              child: Column(
                children: [
                  Container(
                    height: 14.v,
                    width: 345.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                    ),
                  ),
                  _buildRowDotoxFour(context),
                  SizedBox(height: 44.v),
                  Divider(
                    indent: 11.h,
                    endIndent: 10.h,
                  ),
                  SizedBox(height: 19.v),
                  _buildStackOne(context),
                  _buildColumnRanking(context),
                  SizedBox(height: 24.v),
                  SizedBox(
                    height: 630.v,
                    width: 364.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.h,
                              vertical: 10.v,
                            ),
                            decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TOP 3",
                                  style:
                                      CustomTextStyles.headlineSmallPrimary_1,
                                ),
                                SizedBox(height: 18.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse29,
                                      height: 37.v,
                                      width: 38.h,
                                      radius: BorderRadius.circular(
                                        18.h,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.h,
                                        top: 3.v,
                                        bottom: 3.v,
                                      ),
                                      child: Text(
                                        "user 506",
                                        style: CustomTextStyles
                                            .headlineSmallOrangeA700,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 25.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse30,
                                      height: 37.v,
                                      width: 38.h,
                                      radius: BorderRadius.circular(
                                        18.h,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.h,
                                        bottom: 5.v,
                                      ),
                                      child: Text(
                                        "user 1109",
                                        style: CustomTextStyles
                                            .headlineSmallPurple500,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 24.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse31,
                                      height: 37.v,
                                      width: 38.h,
                                      radius: BorderRadius.circular(
                                        18.h,
                                      ),
                                      margin: EdgeInsets.only(top: 1.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.h,
                                        bottom: 8.v,
                                      ),
                                      child: Text(
                                        "user 321",
                                        style: CustomTextStyles
                                            .headlineSmallIndigoA700,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 16.v),
                                Text(
                                  "도톡스 랭킹",
                                  style: CustomTextStyles.titleLargeGray80001,
                                ),
                                SizedBox(height: 18.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 37.v,
                                      width: 38.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          19.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            theme.colorScheme.primary,
                                            appTheme.whiteA70001
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.h,
                                        top: 3.v,
                                        bottom: 6.v,
                                      ),
                                      child: Text(
                                        "user 2021",
                                        style: CustomTextStyles.titleLarge22,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 26.v),
                                Row(
                                  children: [
                                    Container(
                                      height: 37.v,
                                      width: 38.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          19.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            theme.colorScheme.primary,
                                            appTheme.whiteA70001
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.h,
                                        top: 4.v,
                                        bottom: 5.v,
                                      ),
                                      child: Text(
                                        "user 2022",
                                        style: CustomTextStyles.titleLarge22,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 26.v),
                                Row(
                                  children: [
                                    Container(
                                      height: 37.v,
                                      width: 38.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          19.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            theme.colorScheme.primary,
                                            appTheme.whiteA70001
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.h,
                                        top: 4.v,
                                        bottom: 5.v,
                                      ),
                                      child: Text(
                                        "user 2023",
                                        style: CustomTextStyles.titleLarge22,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 26.v),
                                Row(
                                  children: [
                                    Container(
                                      height: 37.v,
                                      width: 38.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          19.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            theme.colorScheme.primary,
                                            appTheme.whiteA70001
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.h,
                                        top: 4.v,
                                        bottom: 5.v,
                                      ),
                                      child: Text(
                                        "user 2024",
                                        style: CustomTextStyles.titleLarge22,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 26.v),
                                Row(
                                  children: [
                                    Container(
                                      height: 37.v,
                                      width: 38.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          19.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            theme.colorScheme.primary,
                                            appTheme.whiteA70001
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 15.h,
                                        top: 4.v,
                                        bottom: 5.v,
                                      ),
                                      child: Text(
                                        "user 2025",
                                        style: CustomTextStyles.titleLarge22,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 46.v)
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowForwardI,
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          alignment: Alignment.bottomCenter,
                          onTap: () {
                            onTapImgArrowforwardi(context);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 46.v)
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
  Widget _buildRowDotoxFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDotox1,
            height: 71.v,
            width: 65.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 25.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPerson24dpFil,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(top: 3.v),
                  onTap: () {
                    onTapImgPerson24dpfil(context);
                  },
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse13,
                  height: 43.v,
                  width: 45.h,
                  radius: BorderRadius.circular(
                    21.h,
                  ),
                  margin: EdgeInsets.only(left: 15.h),
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
  Widget _buildStackOne(BuildContext context) {
    return SizedBox(
      height: 123.v,
      width: 332.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPath,
            height: 4.v,
            width: 9.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 11.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChart,
            height: 123.v,
            width: 332.h,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnRanking(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "내 순위",
                style: CustomTextStyles.headlineSmallGray80001,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "“1”",
                  style: CustomTextStyles.headlineSmallPrimary_1,
                ),
              )
            ],
          ),
          SizedBox(height: 4.v),
          Text(
            "Lv 321",
            style: CustomTextStyles.headlineSmallPrimary_1,
          ),
          SizedBox(height: 6.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "다음 레벨까지 ",
                  style: CustomTextStyles.titleMediumBluegray90018,
                ),
                TextSpan(
                  text: "71포인트",
                  style: theme.textTheme.titleLarge,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 23.v),
          Container(
            height: 9.v,
            width: 308.h,
            decoration: BoxDecoration(
              color: appTheme.blue50,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                4.h,
              ),
              child: LinearProgressIndicator(
                value: 0.78,
                backgroundColor: appTheme.blue50,
              ),
            ),
          ),
          SizedBox(height: 2.v)
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
  onTapImgPerson24dpfil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapImgCircleimage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the appusageScreen when the action is triggered.
  onTapImgArrowforwardi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.appusageScreen);
  }
}
