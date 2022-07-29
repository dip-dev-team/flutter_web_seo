import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../flutter_web_seo.dart';

/// A [MaterialApp] Extension for insert [RobotDetector].
extension MaterialAppExtension on MaterialApp {
  Widget seo({Key? key, bool? debug}) => kIsWeb
      ? RobotDetector(
          key: key,
          debug: debug ?? false,
          child: this,
        )
      : this;
}

/// A [CupertinoApp] Extension for insert [RobotDetector].
extension CupertinoAppExtension on CupertinoApp {
  Widget seo({Key? key, bool? debug}) => kIsWeb
      ? RobotDetector(
          key: key,
          debug: debug ?? false,
          child: this,
        )
      : this;
}

/// A [WidgetsApp] Extension for insert [RobotDetector].
extension WidgetsAppExtension on WidgetsApp {
  Widget seo({Key? key, bool? debug}) => kIsWeb
      ? RobotDetector(
          key: key,
          debug: debug ?? false,
          child: this,
        )
      : this;
}
