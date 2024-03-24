import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plantit/core/utils/size_utils.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.lightGreen100,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.lightGreen100,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 16.fSize,
          fontFamily: 'Playfair Display',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Overlock',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.lime400,
          fontSize: 48.fSize,
          fontFamily: 'IM FELL Great Primer SC',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 36.fSize,
          fontFamily: 'Playfair Display',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 24.fSize,
          fontFamily: 'Playfair Display',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 16.fSize,
          fontFamily: 'Playfair Display',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFECFFDC),
    primaryContainer: Color(0XFF325D25),

    // Error colors
    errorContainer: Color(0XFF00D26A),
    onError: Color(0XFFEAE3C0),
    onErrorContainer: Color(0XFF023020),

    // On colors(text colors)
    onPrimary: Color(0XFF162E25),
    onPrimaryContainer: Color(0XA2FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFF6C915);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue300 => Color(0XFF6CB1E3);
  Color get blue50 => Color(0XFFDCEBFD);

  // DeepPurple
  Color get deepPurple50 => Color(0XFFEEE8FF);

  // Gray
  Color get gray300 => Color(0XFFECE5D8);
  Color get gray50 => Color(0XFFFFF9F9);
  Color get gray600 => Color(0XFF6A8A60);
  Color get gray60001 => Color(0XFF7A8A6E);
  Color get gray60002 => Color(0XFF7B8160);
  Color get gray700 => Color(0XFF575757);

  // Green
  Color get green100 => Color(0XFFCED2BE);
  Color get green400 => Color(0XFF56F556);
  Color get green800 => Color(0XFF228B22);

  // LightGreen
  Color get lightGreen100 => Color(0XFFD5F0C1);
  Color get lightGreen300 => Color(0XFFBDCB6D);
  Color get lightGreen900 => Color(0XFF347300);

  // Lime
  Color get lime100 => Color(0XFFF2EFBE);
  Color get lime400 => Color(0XFFCBDF61);
  Color get lime700 => Color(0XFFB4C424);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
