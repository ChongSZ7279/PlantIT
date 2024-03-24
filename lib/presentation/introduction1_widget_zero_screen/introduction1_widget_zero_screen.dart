import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class Introduction1WidgetZeroScreen extends StatelessWidget {
  const Introduction1WidgetZeroScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                        vertical: 64.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgLogo,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20.h),
                            child: Text(
                              "Skip",
                              style: CustomTextStyles
                                  .headlineSmallPortLligatSlabPrimary,
                            ),
                          ),
                          SizedBox(height: 43.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgCloudWidget,
                            height: 63.v,
                            width: 70.h,
                            margin: EdgeInsets.only(right: 84.h),
                          ),
                          SizedBox(height: 10.v),
                          _buildSixtyNine(context),
                          SizedBox(height: 69.v),
                          Container(
                            width: 267.h,
                            margin: EdgeInsets.only(
                              left: 74.h,
                              right: 5.h,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 46.h,
                              vertical: 32.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgChtabox,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 34.v),
                                Container(
                                  width: 160.h,
                                  margin: EdgeInsets.only(right: 14.h),
                                  child: Text(
                                    "Customise widgets based on your preference. ",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyLargeBlack900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 69.v),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage31,
                    height: 419.v,
                    width: 200.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 40.h),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLightiningWidget,
            height: 92.v,
            width: 80.h,
            margin: EdgeInsets.only(top: 28.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHealthWidget,
            height: 79.adaptSize,
            width: 79.adaptSize,
            margin: EdgeInsets.only(bottom: 41.v),
          ),
        ],
      ),
    );
  }
}
