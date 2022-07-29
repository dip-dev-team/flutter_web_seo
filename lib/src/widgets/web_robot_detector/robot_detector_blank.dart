import 'package:flutter/widgets.dart';

/// This VM import stub does nothing and only returns child.
class RobotDetector extends InheritedWidget {
  ///Not used
  final bool debug;

  ///Not used
  final bool isDetected = false;

  const RobotDetector({
    super.key,
    this.debug = false,
    required super.child,
  });

  static RobotDetector of(BuildContext context) {
    final RobotDetector? result =
        context.dependOnInheritedWidgetOfExactType<RobotDetector>();
    assert(result != null, 'No RobotDetector found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant RobotDetector oldWidget) => false;
}
