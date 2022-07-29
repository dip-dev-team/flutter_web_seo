library flutter_web_seo;

export 'src/extensions/application_extension.dart';
export 'src/extensions/robot_detector_extension.dart';
export 'src/extensions/text_widget_extension.dart';
export 'src/widgets/web_robot_detector/robot_detector_web.dart'
    if (dart.library.io) 'src/widgets/web_robot_detector/web_robot_detector_blank.dart';
export 'src/widgets/web_seo_text/web_seo_text_style.dart';
export 'src/widgets/web_seo_text/web_seo_text_web.dart'
    if (dart.library.io) 'src/widgets/web_seo_text/web_seo_text_blank.dart';

class FlutterWebCEO {}
