import 'package:webman_ps3/core/enum/language_enum.dart';

class ApplicationPaths {
  const ApplicationPaths();
  final String images = 'assets/images';
  final String language = 'assets/translations';
}

class Application {
  static const Languages language = Languages.turkish;
  static const Iterable<Languages> supportedLanguages = Languages.values;
  static const ApplicationPaths paths = ApplicationPaths();
}
