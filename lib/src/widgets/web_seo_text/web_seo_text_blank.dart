import 'package:flutter/widgets.dart';

import '../web_seo_widget_state.dart';
import 'web_seo_text_style.dart';

/// This VM import stub does nothing and only returns child.
class WebSEOText extends StatefulWidget {
  ///Any Widget with text in it
  final Widget child;

  ///Not used
  final String? text;

  ///Not used
  final WebSEOTextStyle? style;

  const WebSEOText({super.key, required this.child, this.text, this.style});

  @override
  State<WebSEOText> createState() => _WebSEOTextState();
}

class _WebSEOTextState extends WebSEOWidgetState<WebSEOText> {
  @override
  Widget build(BuildContext context) => widget.child;
}
