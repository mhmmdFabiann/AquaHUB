import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumff212121 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF212121),
        fontWeight: FontWeight.w400,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  // Label text style
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeGray100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeGreenA200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.greenA200,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeLight => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get titleLargeLightgreen400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightGreen400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff212121 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF212121),
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }
}
