import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/alarm_screen/alarm_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/appusage_screen/appusage_screen.dart';
import '../presentation/challenge_screen/challenge_screen.dart';
import '../presentation/community_screen/community_screen.dart';
import '../presentation/container_screen/container_screen.dart';
import '../presentation/firstmoongeun_screen/firstmoongeun_screen.dart';
import '../presentation/forms_fifth_screen/forms_fifth_screen.dart';
import '../presentation/forms_first_screen/forms_first_screen.dart';
import '../presentation/forms_fourth_screen/forms_fourth_screen.dart';
import '../presentation/forms_screen/forms_screen.dart';
import '../presentation/forms_second_screen/forms_second_screen.dart';
import '../presentation/forms_third_screen/forms_third_screen.dart';
import '../presentation/fourthmoongeun_screen/fourthmoongeun_screen.dart';
import '../presentation/information_screen/information_screen.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/maintwinscreen_screen/maintwinscreen_screen.dart';
import '../presentation/rank_screen/rank_screen.dart';
import '../presentation/result_screen/result_screen.dart';
import '../presentation/secondmoongeun_screen/secondmoongeun_screen.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/thirdmoongeun_screen/thirdmoongeun_screen.dart';
import '../presentation/wait_one_screen/wait_one_screen.dart';
import '../presentation/wait_screen/wait_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String logInScreen = '/log_in_screen';

  static const String formsScreen = '/forms_screen';

  static const String formsFirstScreen = '/forms_first_screen';

  static const String formsSecondScreen = '/forms_second_screen';

  static const String formsThirdScreen = '/forms_third_screen';

  static const String formsFourthScreen = '/forms_fourth_screen';

  static const String formsFifthScreen = '/forms_fifth_screen';

  static const String waitScreen = '/wait_screen';

  static const String waitOneScreen = '/wait_one_screen';

  static const String resultScreen = '/result_screen';

  static const String informationScreen = '/information_screen';

  static const String maintwinscreenScreen = '/maintwinscreen_screen';

  static const String appusageScreen = '/appusage_screen';

  static const String challengeScreen = '/challenge_screen';

  static const String mainPage = '/main_page';

  static const String containerScreen = '/container_screen';

  static const String rankScreen = '/rank_screen';

  static const String communityScreen = '/community_screen';

  static const String alarmScreen = '/alarm_screen';

  static const String settingsScreen = '/settings_screen';

  static const String firstmoongeunScreen = '/firstmoongeun_screen';

  static const String secondmoongeunScreen = '/secondmoongeun_screen';

  static const String thirdmoongeunScreen = '/thirdmoongeun_screen';

  static const String fourthmoongeunScreen = '/fourthmoongeun_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    logInScreen: (context) => LogInScreen(),
    formsScreen: (context) => FormsScreen(),
    formsFirstScreen: (context) => FormsFirstScreen(),
    formsSecondScreen: (context) => FormsSecondScreen(),
    formsThirdScreen: (context) => FormsThirdScreen(),
    formsFourthScreen: (context) => FormsFourthScreen(),
    formsFifthScreen: (context) => FormsFifthScreen(),
    waitScreen: (context) => WaitScreen(),
    waitOneScreen: (context) => WaitOneScreen(),
    resultScreen: (context) => ResultScreen(),
    informationScreen: (context) => InformationScreen(),
    maintwinscreenScreen: (context) => MaintwinscreenScreen(),
    appusageScreen: (context) => AppusageScreen(),
    challengeScreen: (context) => ChallengeScreen(),
    containerScreen: (context) => ContainerScreen(),
    rankScreen: (context) => RankScreen(),
    communityScreen: (context) => CommunityScreen(),
    alarmScreen: (context) => AlarmScreen(),
    settingsScreen: (context) => SettingsScreen(),
    firstmoongeunScreen: (context) => FirstmoongeunScreen(),
    secondmoongeunScreen: (context) => SecondmoongeunScreen(),
    thirdmoongeunScreen: (context) => ThirdmoongeunScreen(),
    fourthmoongeunScreen: (context) => FourthmoongeunScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen()
  };
}
