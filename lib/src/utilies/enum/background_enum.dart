import 'dart:ui';

import 'package:custom_toast_message/src/constants/color_constants.dart';
import 'package:flutter/foundation.dart' show describeEnum;
import 'package:flutter/material.dart';

enum BackgroundColor {
  ///green color for success background [successColor]
  success,

  ///blue color for info background [infoColor]
  info,

  ///orange color for warning background [warningColor]
  warning,

  ///red color for error background [errorColor]
  error
}

extension ColorExtension on BackgroundColor {
  String get name => describeEnum(this);

  ///get color
  Color get getColor {
    switch (this) {
      case BackgroundColor.success:
        return successColor;
      case BackgroundColor.info:
        return infoColor;
      case BackgroundColor.warning:
        return warningColor;
      case BackgroundColor.error:
        return errorColor;
      default:
        return Colors.transparent;
    }
  }

  ///get Text
  String get getText {
    switch (this) {
      case BackgroundColor.success:
        return "Success";
      case BackgroundColor.info:
        return "Info";
      case BackgroundColor.warning:
        return "Warning";
      case BackgroundColor.error:
        return "Error";
      default:
        return "";
    }
  }
}
