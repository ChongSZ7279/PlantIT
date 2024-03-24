import 'package:plantit/widgets/custom_text_form_field.dart';
import 'package:plantit/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RegisterSignUpScreen extends StatelessWidget {
  RegisterSignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.lightGreen100,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgRegisterSignUp),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 42.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 67.v),
                          _buildSignUpInformation(context),
                          SizedBox(height: 71.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Already have your account? ",
                                          style: CustomTextStyles
                                              .bodyMediumOpenSansffecffdc),
                                      TextSpan(text: " ")
                                    ]),
                                    textAlign: TextAlign.left),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLogIn(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("Log In",
                                            style: theme.textTheme.labelLarge)))
                              ]),
                          SizedBox(height: 20.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        width: 211.h,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 15.v, bottom: 14.v),
                                                  child: SizedBox(
                                                      width: 72.h,
                                                      child: Divider())),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGoogle,
                                                  height: 25.adaptSize,
                                                  width: 25.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 3.v)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgFacebook,
                                                  height: 30.adaptSize,
                                                  width: 30.adaptSize),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTelevision,
                                                  height: 29.v,
                                                  width: 23.h)
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 15.v, bottom: 14.v),
                                        child: SizedBox(
                                            width: 72.h, child: Divider()))
                                  ]))
                        ])))));
  }

  /// Section Widget
  Widget _buildSignUpInformation(BuildContext context) {
    return Container(
        width: 305.h,
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 29.v),
        decoration: AppDecoration.fillGreen
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign Up", style: theme.textTheme.displaySmall),
              Text("Let’s create your account !",
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 39.v),
              Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text("Email", style: theme.textTheme.bodyLarge)),
              SizedBox(height: 8.v),
              Opacity(
                  opacity: 0.8,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: CustomTextFormField(
                          controller: emailController,
                          alignment: Alignment.center))),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text("Password", style: theme.textTheme.bodyLarge)),
              SizedBox(height: 4.v),
              Opacity(
                  opacity: 0.8,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: CustomTextFormField(
                          controller: passwordController,
                          alignment: Alignment.center,
                          obscureText: true))),
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text("Confirm Password",
                      style: theme.textTheme.bodyLarge)),
              SizedBox(height: 2.v),
              Opacity(
                  opacity: 0.8,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: CustomTextFormField(
                          controller: confirmpasswordController,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          obscureText: true))),
              SizedBox(height: 48.v),
              CustomElevatedButton(
                  text: "Next",
                  margin: EdgeInsets.only(left: 21.h, right: 24.h),
                  onPressed: () {
                    onTapNext(context);
                  },
                  alignment: Alignment.center),
              SizedBox(height: 8.v)
            ]));
  }

  /// Navigates to the registerUsageScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerUsageScreen);
  }

  /// Navigates to the registerLoginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerLoginScreen);
  }
}
