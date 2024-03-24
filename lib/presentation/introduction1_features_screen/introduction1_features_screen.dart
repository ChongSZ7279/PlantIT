import 'package:plantit/widgets/custom_icon_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class Introduction1FeaturesScreen extends StatelessWidget {
  const Introduction1FeaturesScreen({Key? key})
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 25.h),
                            child: Text(
                              "Skip",
                              style: CustomTextStyles
                                  .headlineSmallPortLligatSlabPrimary,
                            ),
                          ),
                          SizedBox(height: 112.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 48.h,
                              right: 17.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 82.adaptSize,
                                  width: 82.adaptSize,
                                  margin: EdgeInsets.only(bottom: 42.v),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 18.h,
                                    vertical: 15.v,
                                  ),
                                  decoration: AppDecoration
                                      .gradientOnPrimaryContainerToGray
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder41,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup,
                                    height: 48.v,
                                    width: 45.h,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 58.v),
                                  child: CustomIconButton(
                                    height: 66.adaptSize,
                                    width: 66.adaptSize,
                                    padding: EdgeInsets.all(10.h),
                                    decoration: IconButtonStyleHelper
                                        .gradientLimeToLightGreen,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgNotification1,
                                    ),
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 56.v),
                                  child: CustomIconButton(
                                    height: 67.v,
                                    width: 69.h,
                                    padding: EdgeInsets.all(9.h),
                                    decoration: IconButtonStyleHelper
                                        .gradientGrayToBlue,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgCalendar1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30.v),
                          SizedBox(
                            height: 204.v,
                            width: 267.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 17.h,
                                      vertical: 35.v,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        SizedBox(
                                          width: 221.h,
                                          child: Text(
                                            "Guidance throughout the entire crop cultivation by providing peresonalised recommendations and reminders. ",
                                            maxLines: 5,
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
                          CustomImageView(
                            imagePath: ImageConstant.imgImage31,
                            height: 419.v,
                            width: 200.h,
                            alignment: Alignment.centerLeft,
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
