import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:plantit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RegisterSuccessDialog extends StatelessWidget {
  const RegisterSuccessDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return _buildSignUp(context);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.green100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Container(
        height: 501.v,
        width: 305.h,
        decoration: AppDecoration.fillGreen.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 31.h,
                  right: 55.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: theme.textTheme.displaySmall,
                    ),
                    Text(
                      "Let’s create your account !",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 316.v),
                    Opacity(
                      opacity: 0.8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgRectangle126,
                        height: 53.v,
                        width: 198.h,
                        radius: BorderRadius.circular(
                          26.h,
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 31.h,
                  vertical: 29.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign Up",
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Let’s create your account !",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 58.v),
                    Container(
                      height: 118.adaptSize,
                      width: 118.adaptSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: 21.h,
                        vertical: 29.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder59,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 58.v,
                        width: 74.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      width: 179.h,
                      child: Text(
                        "Your account is successfully created.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLarge_1,
                      ),
                    ),
                    SizedBox(height: 85.v),
                    Container(
                      margin: EdgeInsets.only(
                        left: 21.h,
                        right: 24.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 37.h,
                        vertical: 9.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgRectangle126,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Text(
                            "Get Started",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
