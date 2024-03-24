import 'package:plantit/widgets/custom_text_form_field.dart';
import 'package:plantit/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RegisterLoginScreen extends StatelessWidget {
  RegisterLoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                        image: AssetImage(ImageConstant.imgRegisterLogin),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 42.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 79.v),
                          _buildWelcomeRectangle(context),
                          SizedBox(height: 58.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Create new account",
                                              style: CustomTextStyles
                                                  .bodyMediumOpenSansffecffdc),
                                          TextSpan(
                                              text: "? ",
                                              style: CustomTextStyles
                                                  .bodyMediumOpenSansffecffdc)
                                        ]),
                                        textAlign: TextAlign.left)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignup(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(text: " "),
                                              TextSpan(
                                                  text: "Sign Up",
                                                  style: CustomTextStyles
                                                      .labelLargeffffffff)
                                            ]),
                                            textAlign: TextAlign.left)))
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
  Widget _buildWelcomeRectangle(BuildContext context) {
    return Container(
        width: 305.h,
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 26.v),
        decoration: AppDecoration.fillGreen
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 38.h),
                  child: Row(children: [
                    Text("Welcome ", style: theme.textTheme.displaySmall),
                    CustomImageView(
                        imagePath: ImageConstant.imgSmileEmoji,
                        height: 41.v,
                        width: 42.h,
                        margin:
                            EdgeInsets.only(left: 12.h, top: 2.v, bottom: 4.v))
                  ])),
              SizedBox(height: 1.v),
              Text("Plantit helps you monitor your farm.",
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 27.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("Email", style: theme.textTheme.bodyLarge)),
              SizedBox(height: 8.v),
              Opacity(
                  opacity: 0.8,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.h, right: 10.h),
                      child: CustomTextFormField(
                          controller: emailController,
                          alignment: Alignment.center))),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("Password", style: theme.textTheme.bodyLarge)),
              SizedBox(height: 4.v),
              Opacity(
                  opacity: 0.8,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.h, right: 10.h),
                      child: CustomTextFormField(
                          controller: passwordController,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          obscureText: true))),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(left: 17.h, right: 31.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Forgotten password",
                                  style: CustomTextStyles
                                      .bodyMediumOpenSansff162e25),
                              TextSpan(
                                  text: "? ",
                                  style: CustomTextStyles
                                      .bodyMediumOpenSansff162e25)
                            ]),
                            textAlign: TextAlign.left)),
                    Container(
                        width: 64.h,
                        margin: EdgeInsets.only(left: 7.h),
                        child: Text(" Reset here",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .bodyMediumPonnalaOnErrorContainer))
                  ])),
              SizedBox(height: 104.v),
              CustomElevatedButton(
                  text: "Login",
                  margin: EdgeInsets.only(left: 22.h, right: 23.h),
                  alignment: Alignment.center),
              SizedBox(height: 17.v)
            ]));
  }

  /// Navigates to the registerRolesScreen when the action is triggered.
  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerRolesScreen);
  }
}
