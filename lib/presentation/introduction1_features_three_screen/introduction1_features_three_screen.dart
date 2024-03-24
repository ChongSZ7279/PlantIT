import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class Introduction1FeaturesThreeScreen extends StatelessWidget {
  const Introduction1FeaturesThreeScreen({Key? key})
      : super(
          key: key,
        );

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
              image: AssetImage(
                ImageConstant.imgGroup47,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 64.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 17.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 25.h),
                              child: Text(
                                "Skip",
                                style: CustomTextStyles
                                    .headlineSmallPortLligatSlabPrimary,
                              ),
                            ),
                          ),
                          SizedBox(height: 181.v),
                          Padding(
                            padding: EdgeInsets.only(left: 73.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 52.v,
                                  width: 42.h,
                                  margin: EdgeInsets.only(bottom: 48.v),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgMingcuteInformationFill,
                                        height: 42.adaptSize,
                                        width: 42.adaptSize,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgVideoCamera,
                                        height: 49.v,
                                        width: 9.h,
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(right: 3.h),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 99.adaptSize,
                                  width: 99.adaptSize,
                                  margin: EdgeInsets.only(left: 14.h),
                                  decoration: AppDecoration.fillBlue.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder49,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGlobe,
                                    height: 99.adaptSize,
                                    width: 99.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 164.v,
                              width: 267.h,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 33.h,
                                        vertical: 31.v,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                        image: DecorationImage(
                                          image: fs.Svg(
                                            ImageConstant.imgGroup1,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 11.v),
                                          SizedBox(
                                            width: 194.h,
                                            child: Text(
                                              "Real-time information aggregates data from various sources.",
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSave,
                                    height: 56.v,
                                    width: 64.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(left: 13.h),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage31,
                            height: 419.v,
                            width: 200.h,
                            margin: EdgeInsets.only(left: 23.h),
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
      ),
    );
  }
}
