import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color darken({double amount = 0.1}) {
    assert(amount >= 0 && amount <= 1);

    final HSLColor hsl = HSLColor.fromColor(this);
    final HSLColor hslDark =
        hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten({double amount = 0.1}) {
    assert(amount >= 0 && amount <= 1);

    final HSLColor hsl = HSLColor.fromColor(this);
    final HSLColor hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}

abstract class AppColors {
  /// Use this website (https://chir.ag/projects/name-that-color/#6195ED)
  /// to generate color name from an hexa value

  static const Color blueRibbon = Color(0xFF0f5efe);

  static const Color blueChill = Color(0xFF0b7ba0);

  static const Color chardon = Color(0xFFfff3f1);

  static const Color purpleHeart = Color(0xFFc229de);

  static const Color puertoRico = Color(0xFF50CBB3);

  static const Color selago = Color(0xFFfbf0fd);

  static const Color aquaSpring1 = Color(0xFFeff9fa);

  static const Color aquaSpring2 = Color(0xFFedfaf8);

  static const Color persianBlue = Color(0xFF1b20ad);

  static const Color jade = Color(0xFF00A87F);

  static const Color electricViolet = Color(0xFF5732fb);

  static const Color observatory = Color(0xFF048767);

  static const Color whiteLilac = Color(0xFFf2f2fa);

  static const Color titanWhite = Color(0xFFf5f3ff);

  static const Color wildSand = Color(0xEAEEEEEE);

  static const Color zircon = Color(0xFFf1f6ff);

  static const Color lightningYellow = Color(0xFFfbb82e);

  static const Color schoolBusYellow = Color(0xFFFFD800);

  static const Color boulder = Color(0xFF747474);

  static const Color alizarinCrimson = Color(0xFFe42b21);

  static const Color alabaster1 = Color(0xFFf7f7f7);

  static const Color alabaster2 = Color(0xFFf9f9f9);

  static const Color tundora = Color(0xFF434343);

  static const Color mercury = Color(0xFFe9e9e9);

  static const Color mercurySolid = Color(0xFFe5e5e5);

  static const Color mineShaft = Color(0xFF333333);

  static const Color white = Color(0xFFFFFFFF);

  static const Color black = Color(0xFF000000);

  static Color get transparent => white.withOpacity(0);

  static const Color dodgerBlue = Color(0xFF49ABFF);

  static const Color rajah1 = Color(0xFFF9AF65);

  static const Color marzipan = Color(0xFFF8D18B);

  static const Color rajah2 = Color(0xFFf6c771);

  static const Color flushMahagany = Color(0xFFCB3849);

  static const Color salmon = Color(0xFFff7777);

  static const Color lavenderRose = Color(0xFFf997f2);

  static const Color melRose = Color(0xFF94A7FF);

  static const Color sliver = Color(0xFFBDBDBD);

  // ------------------------------------------------
  // Couleurs V1 au 23-11-2022
  static const Color c1 = Color(0xFF8333E9);
  static const Color c2 = Color(0xFFFFA826);
  static const Color c3 = Color(0xFFE82577);
  static const Color c4 = Color(0xFFFDB095);

  // ------------------------------------------------

  static List<Color> whiteTemperatureGradient = <Color>[
    const Color(0x00c5f6ff).withOpacity(1.0),
    const Color(0x00ffffff).withOpacity(1.0),
    const Color(0x00fff7d5).withOpacity(1.0),
    const Color(0x00ffb13c).withOpacity(1.0),
  ];

  static List<Color> colorChartGradient = <Color>[
    const HSVColor.fromAHSV(1, 360, 1, 1).toColor(),
    const HSVColor.fromAHSV(1, 300, 1, 1).toColor(),
    const HSVColor.fromAHSV(1, 240, 1, 1).toColor(),
    const HSVColor.fromAHSV(1, 180, 1, 1).toColor(),
    const HSVColor.fromAHSV(1, 120, 1, 1).toColor(),
    const HSVColor.fromAHSV(1, 60, 1, 1).toColor(),
    const HSVColor.fromAHSV(1, 0, 1, 1).toColor(),
  ];
}
