import 'package:flutter/cupertino.dart';

class CommanWidget {
  static Widget textLayout(String text, double textFontSize, Color textcolor) {
    return Text(
      text,
      style: TextStyle(fontSize: textFontSize, color: textcolor),
    );
  }

  static Widget textLayoutWithWeight(String text, double textFontSize,
      Color textcolor, FontWeight fontWeight) {
    return Text(text,
        style: TextStyle(
            fontSize: textFontSize,
            color: textcolor,
            fontWeight: FontWeight.bold));
  }
}
