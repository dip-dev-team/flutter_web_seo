import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../../flutter_web_seo.dart';

/// A [Text] Extension for insert [WebSEOText].
extension TextWidgetExtension on Text {
  Widget seo({String? text, WebSEOTextStyle? style}) => kIsWeb
      ? WebSEOText(
          key: key,
          text: text,
          style: style,
          child: this,
        )
      : this;
}

/// A [RichText] Extension for insert [WebSEOText].
extension RichTextWidgetExtension on RichText {
  Widget seo({String? text, WebSEOTextStyle? style}) => kIsWeb
      ? WebSEOText(
          key: key,
          text: text,
          style: style,
          child: this,
        )
      : this;
}
