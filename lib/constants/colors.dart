import 'package:flutter/material.dart';

/// Contain all colors use in app
class AppColors {
  static const primaryColor = Color(0xFF303F9F);
  static const onPrimaryColor = Colors.white;
  static const secondaryColor = Color(0xFF01875F);
  static const onSecondaryColor = Colors.white;
  static const surfaceColor = Colors.white;
  static const onSurfaceColor = Colors.black;

  // Other colors
  static const infoFieldBackgroundColor = Color(0xFFF6F6F6);
  static const borderColor = Color(0x1F000000);
  static const inputFieldLabelColor = Color(0xFF616161);

  static ColorScheme colorScheme = const ColorScheme.dark(
    primary: primaryColor,
    onPrimary: onPrimaryColor,
    secondary: secondaryColor,
    onSecondary: onSecondaryColor,
    surface: surfaceColor,
    onSurface: onSurfaceColor,
    brightness: Brightness.light,
  );

  static const profileImgColorList = [
    Color(0xFF56BD88),
    Color(0xFFEF6293),
    Color(0xFF90A4AD),
    Color(0xFF4EB4AC),
    Color(0xFFF6C01F),
    Color(0xFF6195F7),
  ];
}
