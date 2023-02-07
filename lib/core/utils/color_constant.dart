import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#6b6b6b');

  static Color black9004c = fromHex('#4c000000');

  static Color gray400 = fromHex('#aeaeae');

  static Color gray500 = fromHex('#929292');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray10001 = fromHex('#d3d3d3');

  static Color orange700 = fromHex('#ff7a00');

  static Color blueA200 = fromHex('#4885ed');

  static Color black9003f = fromHex('#3f000000');

  static Color gray200 = fromHex('#eaeaea');

  static Color greenA700 = fromHex('#03c300');

  static Color black900 = fromHex('#000000');

  static Color gray40001 = fromHex('#b8b8b8');

  static Color gray40002 = fromHex('#c6c6c6');

  static Color bluegray400 = fromHex('#888888');

  static Color gray50001 = fromHex('#9b9b9b');

  static Color gray50002 = fromHex('#979797');

  static Color whiteA700 = fromHex('#ffffff');

  static Color redA700 = fromHex('#ff0000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
