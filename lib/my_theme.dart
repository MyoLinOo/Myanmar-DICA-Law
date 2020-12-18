import 'package:flutter_mdetect/flutter_mdetect.dart';
import 'package:rabbit_converter/rabbit_converter.dart';

class MyTheme {
  MyTheme._();

  static String mmText(String text) {
    return MDetect.isUnicode() ? text : Rabbit.uni2zg(text);
  }
}
