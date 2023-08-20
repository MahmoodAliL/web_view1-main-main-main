
import 'package:flutter/widgets.dart';

class AppDimens {
  static const defaultPadding = 16.0;
  static const defaultRadius = Radius.circular(12);
  static const defaultBorderRadius = BorderRadius.all(defaultRadius);
  static const inputBorderRadius = BorderRadius.all(Radius.circular(10));
  static const defaultAppBarActionsShape = RoundedRectangleBorder(
    borderRadius: AppDimens.defaultBorderRadius,
  );

  static const circleAvatarMinRadius = 25.0;
  static const profileImgRadius = 33.0;
}
