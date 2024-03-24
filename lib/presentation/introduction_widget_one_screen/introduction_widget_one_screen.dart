import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class IntroductionWidgetOneScreen extends StatelessWidget {
  const IntroductionWidgetOneScreen({Key? key}) : super(key: key);

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
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.lightGreen100, appTheme.gray60001]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup47),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 64.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 27.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.h),
                                            child: Text("Skip",
                                                style: CustomTextStyles
                                                    .headlineSmallPortLligatSlabPrimary)),
                                        SizedBox(height: 141.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 29.h, right: 15.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgLightiningWidget,
                                                          height: 80.v,
                                                          width: 69.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 8.v)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgCloudWidget,
                                                          height: 75.v,
                                                          width: 83.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 28.h,
                                                                  top: 13.v)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgHealthWidget,
                                                          height: 88.adaptSize,
                                                          width: 88.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 22.h))
                                                    ]))),
                                        SizedBox(height: 76.v),
                                        Container(
                                            height: 164.v,
                                            width: 267.h,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 41.h,
                                                vertical: 32.v),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: fs.Svg(ImageConstant
                                                        .imgGroup45),
                                                    fit: BoxFit.cover)),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          width: 160.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 5.h),
                                                          child: Text(
                                                              "Customise widgets based on your preference. ",
                                                              maxLines: 3,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodyLargeBlack900))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapNext(context);
                                                          },
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          16.v),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Text(
                                                                        "Next ",
                                                                        style: CustomTextStyles
                                                                            .bodyLargePortLligatSlabLightgreen900),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgLine4,
                                                                        height:
                                                                            1.v,
                                                                        width:
                                                                            9.h,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                4.h,
                                                                            top: 9.v,
                                                                            bottom: 7.v))
                                                                  ]))))
                                                ])),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage31,
                                            height: 419.v,
                                            width: 200.h,
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.only(left: 13.h))
                                      ]))))
                    ])))));
  }

  /// Navigates to the introduction1FeaturesScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.introduction1FeaturesScreen);
  }
}
