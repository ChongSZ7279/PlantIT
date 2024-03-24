import 'package:plantit/widgets/custom_elevated_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class Introduction1FeaturesTwoScreen extends StatelessWidget {
  const Introduction1FeaturesTwoScreen({Key? key}) : super(key: key);

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
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup47),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 64.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 17.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 25.h),
                                                child: Text("Skip",
                                                    style: CustomTextStyles
                                                        .headlineSmallPortLligatSlabPrimary))),
                                        SizedBox(height: 72.v),
                                        Container(
                                            width: 279.h,
                                            margin: EdgeInsets.only(
                                                left: 27.h, right: 50.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 51.h,
                                                vertical: 18.v),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: fs.Svg(ImageConstant
                                                        .imgGroup60),
                                                    fit: BoxFit.cover)),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMingcuteInformationFill,
                                                      height: 42.adaptSize,
                                                      width: 42.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 38.v,
                                                          bottom: 79.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgVideoCamera,
                                                      height: 49.v,
                                                      width: 9.h,
                                                      margin: EdgeInsets.only(
                                                          left: 19.h,
                                                          bottom: 110.v)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgSettingsBlack900,
                                                      height: 42.v,
                                                      width: 41.h,
                                                      margin: EdgeInsets.only(
                                                          right: 27.h,
                                                          bottom: 117.v))
                                                ])),
                                        SizedBox(height: 39.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                                height: 164.v,
                                                width: 267.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          33.h,
                                                                      vertical: 31
                                                                          .v),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10,
                                                                  image: DecorationImage(
                                                                      image: fs.Svg(
                                                                          ImageConstant
                                                                              .imgGroup1),
                                                                      fit: BoxFit
                                                                          .cover)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    SizedBox(
                                                                        height:
                                                                            11.v),
                                                                    SizedBox(
                                                                        width: 194
                                                                            .h,
                                                                        child: Text(
                                                                            "Real-time information aggregates data from various sources.",
                                                                            maxLines:
                                                                                3,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: CustomTextStyles.bodyLargeBlack900))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgSave,
                                                          height: 56.v,
                                                          width: 64.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 13.h))
                                                    ]))),
                                        Container(
                                            height: 419.v,
                                            width: 275.h,
                                            margin: EdgeInsets.only(left: 23.h),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage31,
                                                      height: 419.v,
                                                      width: 200.h,
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  CustomElevatedButton(
                                                      width: 240.h,
                                                      text: "Let's plant!",
                                                      margin: EdgeInsets.only(
                                                          top: 169.v),
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .fillPrimaryTL26,
                                                      onPressed: () {
                                                        onTapLetsPlant(context);
                                                      },
                                                      alignment:
                                                          Alignment.topRight)
                                                ]))
                                      ]))))
                    ])))));
  }

  /// Navigates to the registerLoginScreen when the action is triggered.
  onTapLetsPlant(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerLoginScreen);
  }
}
