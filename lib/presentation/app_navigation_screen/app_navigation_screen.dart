import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forms",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.formsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forms first",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formsFirstScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forms second",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formsSecondScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forms third",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formsThirdScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forms fourth",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formsFourthScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forms fifth",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formsFifthScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "wait",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.waitScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "wait One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.waitOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "result",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.resultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "information",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.informationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "maintwinscreen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.maintwinscreenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Appusage",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.appusageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Challenge",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.challengeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.containerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Rank",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.rankScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Alarm",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.alarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "firstMoongeun",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.firstmoongeunScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "secondMoongeun",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.secondmoongeunScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "thirdMoongeun",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.thirdmoongeunScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "fourthMoongeun",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.fourthmoongeunScreen),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
