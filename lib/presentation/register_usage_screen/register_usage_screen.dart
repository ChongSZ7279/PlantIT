import 'package:plantit/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class RegisterUsageScreen extends StatelessWidget {
  const RegisterUsageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.lightGreen100,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgRegisterUsername),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 42.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 67.v),
                          Container(
                              width: 305.h,
                              margin: EdgeInsets.only(left: 1.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 31.h, vertical: 29.v),
                              decoration: AppDecoration.fillGreen.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder30),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Sign Up",
                                            style:
                                                theme.textTheme.displaySmall)),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            "Let’s create your account !",
                                            style: theme.textTheme.bodyMedium)),
                                    SizedBox(height: 69.v),
                                    CustomIconButton(
                                        height: 61.adaptSize,
                                        width: 61.adaptSize,
                                        padding: EdgeInsets.all(7.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgLock)),
                                    SizedBox(height: 7.v),
                                    Text("Personal Use",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 60.v),
                                    CustomIconButton(
                                        height: 62.v,
                                        width: 63.h,
                                        padding: EdgeInsets.all(3.h),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgThumbsUp)),
                                    SizedBox(height: 8.v),
                                    Text("Organization",
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 65.v)
                                  ])),
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
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGoogle,
                                                        height: 25.adaptSize,
                                                        width: 25.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 3.v)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgFacebook,
                                                        height: 30.adaptSize,
                                                        width: 30.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 20.h)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgTelevision,
                                                        height: 29.v,
                                                        width: 23.h,
                                                        margin: EdgeInsets.only(
                                                            left: 20.h))
                                                  ])
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 15.v, bottom: 14.v),
                                        child: SizedBox(
                                            width: 72.h, child: Divider()))
                                  ]))
                        ])))));
  }

  /// Navigates to the registerLoginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerLoginScreen);
  }
}
