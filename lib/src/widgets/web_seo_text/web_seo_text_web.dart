// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';

import '../../../flutter_web_seo.dart';
import '../size_widget.dart';
import '../web_seo_widget_state.dart';

/// A Color converter Extension.
extension ColorExtension on Color {
  String toHexTriplet() =>
      '#${(value & 0xFF0000).toRadixString(16).padLeft(6, '0').toUpperCase()}';
}

/// A [Widget] to create the [HtmlElement] Tags from the TEXT widget.
class WebSEOText extends StatefulWidget {
  ///Any Widget with text in it
  final Widget child;

  ///Text that the child contains
  final String? text;

  ///Text Style [WebSEOTextStyle] for rendering
  final WebSEOTextStyle? style;

  const WebSEOText({Key? key, required this.child, this.text, this.style})
      : super(key: key);

  @override
  State<WebSEOText> createState() => _WebSEOTextState();
}

class _WebSEOTextState extends WebSEOWidgetState<WebSEOText> {
  HtmlElement get _htmlElement {
    switch (widget.style) {
      case WebSEOTextStyle.header1:
        return HeadingElement.h1();
      case WebSEOTextStyle.header2:
        return HeadingElement.h2();
      case WebSEOTextStyle.header3:
        return HeadingElement.h3();
      case WebSEOTextStyle.header4:
        return HeadingElement.h4();
      case WebSEOTextStyle.header5:
        return HeadingElement.h5();
      case WebSEOTextStyle.header6:
        return HeadingElement.h6();
      case WebSEOTextStyle.paragraph:
      default:
        return ParagraphElement();
    }
  }

  String get _text {
    final text = widget.text;
    if (text != null) {
      return text;
    }
    final child = widget.child;
    if (child is Text) {
      final text = child.data ?? child.textSpan?.toPlainText();
      if (text == null) {
        throw FlutterError(
          'WebSEOText child is ${widget.child.runtimeType} and data, textSpan are null',
        );
      }
      return text;
    } else if (child is RichText) {
      return child.text.toPlainText();
    }
    throw FlutterError(
      'WebSEOText child is ${widget.child.runtimeType} and text is null',
    );
  }

  TextStyle get _textStyle {
    final child = widget.child;
    if (child is Text) {
      return child.style ?? const TextStyle();
    } else if (child is RichText) {
      return child.text.style ?? const TextStyle();
    }
    return const TextStyle();
  }

  @override
  Widget build(BuildContext context) {
    if (!context.isWebRobotDetected()) {
      return widget.child;
    }

    final viewType = 'html-text-$_text';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      viewType,
      (_) => _htmlElement
        ..text = _text
        ..style.fontSize = '${_textStyle.fontSize?.toInt() ?? 14}px'
        ..style.fontFamily = _textStyle.fontFamily
        ..style.color = _textStyle.color?.toHexTriplet() ?? '#ff0000'
        ..style.margin = '0px'
        ..style.padding = '0px'
        ..style.width = '${size?.width ?? 0}px'
        ..style.height = '${size?.height ?? 0}px',
    );

    return SizedBox.fromSize(
      size: size,
      child: Stack(
        children: [
          SizeWidget(
            onSize: onSize,
            child: widget.child,
          ),
          if (size != null && visible)
            IgnorePointer(
              child: HtmlElementView(viewType: viewType),
            ),
        ],
      ),
    );
  }
}
