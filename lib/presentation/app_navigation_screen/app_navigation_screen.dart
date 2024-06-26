import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Introduction- Widget One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introductionWidgetOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Introduction1- Features",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introduction1FeaturesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Logo",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register-Login",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerLoginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Introduction1- Features One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.introduction1FeaturesOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register-Username (Land Owner)",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.registerUsernameLandOwnerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Introduction1- Features Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.introduction1FeaturesTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register- Roles",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerRolesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register-Username (Worker)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerUsernameWorkerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Introduction1-Widget Zero",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.introduction1WidgetZeroScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register-Username (Worker) One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.registerUsernameWorkerOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Introduction1- Features Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.introduction1FeaturesThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register-Usage",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerUsageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register-Sign Up",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerSignUpScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
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
                  color: Color(0XFF000000),
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
                  color: Color(0XFF888888),
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
            color: Color(0XFF000000),
          ),
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
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
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
                    color: Color(0XFF000000),
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
              color: Color(0XFF888888),
            ),
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
