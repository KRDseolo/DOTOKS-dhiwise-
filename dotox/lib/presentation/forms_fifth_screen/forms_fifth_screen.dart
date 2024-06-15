import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/usermanagement_item_widget.dart';

class FormsFifthScreen extends StatelessWidget {
  const FormsFifthScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildIphoneStatus(context),
              SizedBox(height: 37.v),
              _buildUserManagement(context)
            ],
          ),
        ),
        bottomNavigationBar: _buildTf(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildIphoneStatus(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 14.v,
            width: 345.h,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "질문  30/30",
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 20.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrame2790,
            height: 14.v,
            width: 341.h,
          ),
          SizedBox(height: 17.v),
          Divider(
            endIndent: 10.h,
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserManagement(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 7.5.v),
              child: SizedBox(
                width: 371.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: theme.colorScheme.primary,
                ),
              ),
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return UsermanagementItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      text: "완료",
      margin: EdgeInsets.only(
        left: 12.h,
        right: 10.h,
        bottom: 15.v,
      ),
      buttonTextStyle: CustomTextStyles.headlineSmallWhiteA70001,
      onPressed: () {
        onTaptf(context);
      },
    );
  }

  /// Navigates to the waitScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.waitScreen);
  }
}
