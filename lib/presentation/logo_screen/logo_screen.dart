import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key})
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
            color: appTheme.lightGreen100,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLogo,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 211.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 185.adaptSize,
                  width: 185.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 17.v,
                  ),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLogo145x141,
                    height: 145.v,
                    width: 141.h,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 26.v),
                SizedBox(
                  height: 59.v,
                  width: 180.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 35.v,
                        width: 25.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 32.h),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "P  ant",
                                style: CustomTextStyles
                                    .displayMediumKeaniaOneffcbdf61,
                              ),
                              TextSpan(
                                text: "it",
                                style: CustomTextStyles
                                    .displayMediumKeaniaOnefff6c915,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
