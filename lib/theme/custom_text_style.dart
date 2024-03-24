import 'package:flutter/material.dart';
import 'package:plantit/core/utils/size_utils.dart';
import 'package:plantit/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargePortLligatSlabLightgreen900 =>
      theme.textTheme.bodyLarge!.portLligatSlab.copyWith(
        color: appTheme.lightGreen900,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyMediumOpenSansOnPrimary =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOpenSansPrimary =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOpenSansff162e25 =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: Color(0XFF162E25),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOpenSansffecffdc =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: Color(0XFFECFFDC),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOpenSansffffffff =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPonnalaOnErrorContainer =>
      theme.textTheme.bodyMedium!.ponnala.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
      );
  // Display text style
  static get displayMediumKeaniaOneffcbdf61 =>
      theme.textTheme.displayMedium!.keaniaOne.copyWith(
        color: Color(0XFFCBDF61),
      );
  static get displayMediumKeaniaOnefff6c915 =>
      theme.textTheme.displayMedium!.keaniaOne.copyWith(
        color: Color(0XFFF6C915),
      );
  // Headline text style
  static get headlineSmallPortLligatSlabPrimary =>
      theme.textTheme.headlineSmall!.portLligatSlab.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargeffffffff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get portLligatSlab {
    return copyWith(
      fontFamily: 'Port Lligat Slab',
    );
  }

  TextStyle get iMFELLGreatPrimerSC {
    return copyWith(
      fontFamily: 'IM FELL Great Primer SC',
    );
  }

  TextStyle get keaniaOne {
    return copyWith(
      fontFamily: 'Keania One',
    );
  }

  TextStyle get ponnala {
    return copyWith(
      fontFamily: 'Ponnala',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get playfairDisplay {
    return copyWith(
      fontFamily: 'Playfair Display',
    );
  }

  TextStyle get overlock {
    return copyWith(
      fontFamily: 'Overlock',
    );
  }
}
