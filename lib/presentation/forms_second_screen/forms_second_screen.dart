import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/questionnaire_item_widget.dart';

class FormsSecondScreen extends StatelessWidget {
  const FormsSecondScreen({Key? key})
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
              _buildQuestionnaire(context)
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
            "질문  12/30",
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              right: 18.h,
            ),
            child: Container(
              height: 14.v,
              width: 341.h,
              decoration: BoxDecoration(
                color: appTheme.gray800,
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  7.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.4,
                  backgroundColor: appTheme.gray800,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
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
  Widget _buildQuestionnaire(BuildContext context) {
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
            return QuestionnaireItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      text: "다음",
      margin: EdgeInsets.only(
        left: 11.h,
        right: 11.h,
        bottom: 17.v,
      ),
      buttonTextStyle: CustomTextStyles.headlineSmallWhiteA70001,
      onPressed: () {
        onTaptf(context);
      },
    );
  }

  /// Navigates to the formsThirdScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formsThirdScreen);
  }
}
