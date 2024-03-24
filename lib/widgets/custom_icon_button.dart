import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onErrorContainer,
                  borderRadius: BorderRadius.circular(10.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientLimeToLightGreen => BoxDecoration(
        borderRadius: BorderRadius.circular(33.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lime100,
            appTheme.lightGreen300,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToBlue => BoxDecoration(
        borderRadius: BorderRadius.circular(34.h),
        gradient: LinearGradient(
          begin: Alignment(0.25, 0),
          end: Alignment(0.88, 1),
          colors: [
            appTheme.gray50,
            appTheme.blue300,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToGray => BoxDecoration(
        borderRadius: BorderRadius.circular(33.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.9, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            appTheme.gray700,
          ],
        ),
      );
  static BoxDecoration get gradientLimeToLightGreenTL37 => BoxDecoration(
        borderRadius: BorderRadius.circular(37.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lime100,
            appTheme.lightGreen300,
          ],
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray600,
        borderRadius: BorderRadius.circular(10.h),
      );
}
