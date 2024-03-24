import 'package:plantit/widgets/custom_icon_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class Introduction1FeaturesOneScreen extends StatelessWidget {
  const Introduction1FeaturesOneScreen({Key? key}) : super(key: key);

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
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 25.h),
                                            child: Text("Skip",
                                                style: CustomTextStyles
                                                    .headlineSmallPortLligatSlabPrimary)),
                                        SizedBox(height: 109.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 36.h, right: 33.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 8.v),
                                                          child: CustomIconButton(
                                                              height:
                                                                  66.adaptSize,
                                                              width:
                                                                  66.adaptSize,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .gradientOnPrimaryContainerToGray,
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGroup))),
                                                      CustomIconButton(
                                                          height: 74.adaptSize,
                                                          width: 74.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  11.h),
                                                          decoration:
                                                              IconButtonStyleHelper
                                                                  .gradientLimeToLightGreenTL37,
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgNotification1)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 5.v),
                                                          child: CustomIconButton(
                                                              height: 67.v,
                                                              width: 69.h,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(9.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .gradientGrayToBlue,
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgCalendar1)))
                                                    ]))),
                                        SizedBox(height: 83.v),
                                        SizedBox(
                                            height: 204.v,
                                            width: 267.h,
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .topCenter,
                                                      child: Card(
                                                          clipBehavior: Clip
                                                              .antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                          child: Container(
                                                              height: 178.v,
                                                              width: 267.h,
                                                              padding:
                                                                  EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          17.h,
                                                                      vertical:
                                                                          19.v),
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
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        child: SizedBox(
                                                                            width: 221
                                                                                .h,
                                                                            child: Text("Guidance throughout the entire crop cultivation by providing peresonalised recommendations and reminders. ",
                                                                                maxLines: 5,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                style: CustomTextStyles.bodyLargeBlack900))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                        child: GestureDetector(
                                                                            onTap: () {
                                                                              onTapNext(context);
                                                                            },
                                                                            child: Padding(
                                                                                padding: EdgeInsets.only(right: 20.h),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                                  Text("Next ", style: CustomTextStyles.bodyLargePortLligatSlabLightgreen900),
                                                                                  CustomImageView(imagePath: ImageConstant.imgLine4, height: 1.v, width: 9.h, margin: EdgeInsets.only(left: 4.h, top: 9.v, bottom: 7.v))
                                                                                ]))))
                                                                  ])))),
                                                  CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgSave,
                                                      height: 56.v,
                                                      width: 64.h,
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      margin: EdgeInsets.only(
                                                          left: 13.h))
                                                ])),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage31,
                                            height: 419.v,
                                            width: 200.h,
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.only(left: 23.h))
                                      ]))))
                    ])))));
  }

  /// Navigates to the introduction1FeaturesThreeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.introduction1FeaturesThreeScreen);
  }
}
