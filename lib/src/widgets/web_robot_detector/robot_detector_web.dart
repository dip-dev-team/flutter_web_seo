// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// A [Widget] to detect User-Agent for Search Engines.
class RobotDetector extends InheritedWidget {
  // Regex to detect User-Agent for Search Engines
  final _regExp = RegExp(r'/bot|google|baidu|bing|msn|teoma|slurp|yandex/i');
  // The argument for showing debuggable info
  final bool debug;
  // The variable reflective if User-Agent for Search Engines detected
  late final bool isDetected;

  RobotDetector({
    super.key,
    this.debug = false,
    required super.child,
  }) {
    isDetected = kIsWeb &&
        (debug || _regExp.hasMatch(window.navigator.userAgent.toString()));
  }

  static RobotDetector of(BuildContext context) {
    final RobotDetector? result =
        context.dependOnInheritedWidgetOfExactType<RobotDetector>();
    assert(result != null, 'No RobotDetector found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant RobotDetector oldWidget) =>
      oldWidget.isDetected != isDetected;
}
