import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../../flutter_web_seo.dart';

/// A [BuildContext] Extension for working with [RobotDetector].
extension RobotDetectorExtension on BuildContext {
  bool isWebRobotDetected() =>
      kIsWeb ? RobotDetector.of(this).isDetected : false;
}
