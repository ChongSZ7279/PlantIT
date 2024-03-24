import 'package:flutter/material.dart';
import '../presentation/introduction_widget_one_screen/introduction_widget_one_screen.dart';
import '../presentation/introduction1_features_screen/introduction1_features_screen.dart';
import '../presentation/logo_screen/logo_screen.dart';
import '../presentation/register_login_screen/register_login_screen.dart';
import '../presentation/introduction1_features_one_screen/introduction1_features_one_screen.dart';
import '../presentation/register_username_land_owner_screen/register_username_land_owner_screen.dart';
import '../presentation/introduction1_features_two_screen/introduction1_features_two_screen.dart';
import '../presentation/register_roles_screen/register_roles_screen.dart';
import '../presentation/register_username_worker_screen/register_username_worker_screen.dart';
import '../presentation/introduction1_widget_zero_screen/introduction1_widget_zero_screen.dart';
import '../presentation/register_username_worker_one_screen/register_username_worker_one_screen.dart';
import '../presentation/introduction1_features_three_screen/introduction1_features_three_screen.dart';
import '../presentation/register_usage_screen/register_usage_screen.dart';
import '../presentation/register_sign_up_screen/register_sign_up_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String introductionWidgetOneScreen =
      '/introduction_widget_one_screen';

  static const String introduction1FeaturesScreen =
      '/introduction1_features_screen';

  static const String logoScreen = '/logo_screen';

  static const String registerLoginScreen = '/register_login_screen';

  static const String introduction1FeaturesOneScreen =
      '/introduction1_features_one_screen';

  static const String registerUsernameLandOwnerScreen =
      '/register_username_land_owner_screen';

  static const String introduction1FeaturesTwoScreen =
      '/introduction1_features_two_screen';

  static const String registerRolesScreen = '/register_roles_screen';

  static const String registerUsernameWorkerScreen =
      '/register_username_worker_screen';

  static const String introduction1WidgetZeroScreen =
      '/introduction1_widget_zero_screen';

  static const String registerUsernameWorkerOneScreen =
      '/register_username_worker_one_screen';

  static const String introduction1FeaturesThreeScreen =
      '/introduction1_features_three_screen';

  static const String registerUsageScreen = '/register_usage_screen';

  static const String registerSignUpScreen = '/register_sign_up_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    introductionWidgetOneScreen: (context) => IntroductionWidgetOneScreen(),
    introduction1FeaturesScreen: (context) => Introduction1FeaturesScreen(),
    logoScreen: (context) => LogoScreen(),
    registerLoginScreen: (context) => RegisterLoginScreen(),
    introduction1FeaturesOneScreen: (context) =>
        Introduction1FeaturesOneScreen(),
    registerUsernameLandOwnerScreen: (context) =>
        RegisterUsernameLandOwnerScreen(),
    introduction1FeaturesTwoScreen: (context) =>
        Introduction1FeaturesTwoScreen(),
    registerRolesScreen: (context) => RegisterRolesScreen(),
    registerUsernameWorkerScreen: (context) => RegisterUsernameWorkerScreen(),
    introduction1WidgetZeroScreen: (context) => Introduction1WidgetZeroScreen(),
    registerUsernameWorkerOneScreen: (context) =>
        RegisterUsernameWorkerOneScreen(),
    introduction1FeaturesThreeScreen: (context) =>
        Introduction1FeaturesThreeScreen(),
    registerUsageScreen: (context) => RegisterUsageScreen(),
    registerSignUpScreen: (context) => RegisterSignUpScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
