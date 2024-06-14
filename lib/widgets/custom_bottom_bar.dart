import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum {
  Person24dpfil,
  Barchart24dp,
  Settings24dpf,
  Notifications2
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgPerson24dpFil,
      activeIcon: ImageConstant.imgPerson24dpFil,
      type: BottomBarEnum.Person24dpfil,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBarChart24dp,
      activeIcon: ImageConstant.imgBarChart24dp,
      type: BottomBarEnum.Barchart24dp,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettings24dpF,
      activeIcon: ImageConstant.imgSettings24dpF,
      type: BottomBarEnum.Settings24dpf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNotifications2,
      activeIcon: ImageConstant.imgNotifications2,
      type: BottomBarEnum.Notifications2,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA70001,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
