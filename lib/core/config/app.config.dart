abstract class AppConfig {
  const AppConfig._();

  static String get _assets => 'assets';

  static String get _font => 'font';

  static String get _icon => 'icon';

  static String get _images => 'images';

  static String get _l10n => 'l10n';

  static String get _lotties => 'lotties';

  static String get logo => '$_assets/$_images/logo.png';

  static String get tente => '$_assets/$_images/tente.png';
}
