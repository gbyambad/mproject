import 'package:flutter/material.dart';
import 'package:mproject/core/components/constants/common_color.dart';
import 'package:mproject/core/components/constants/font_family_names.dart';

class CommonText extends StatelessWidget {
  const CommonText(
    this.textValue, {
    this.fontWeight = FontWeight.normal,
    this.fontSize = 12,
    this.color = CommonColor.black2,
    this.lineHeight,
    this.overflow = TextOverflow.visible,
    this.textAlign = TextAlign.left,
    this.fontFamily = FontFamilyName.helveticaNeueMedium,
    this.heightBehavior = const TextHeightBehavior(
      applyHeightToFirstAscent: false,
      applyHeightToLastDescent: false,
    ),
    super.key,
  });

  final String textValue;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final double? lineHeight;
  final TextOverflow overflow;
  final TextAlign textAlign;
  final String? fontFamily;
  final TextHeightBehavior? heightBehavior;

  @override
  Widget build(BuildContext context) {
    final height = (lineHeight ?? fontSize) / fontSize;
    return Text(
      textValue,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: TextDecoration.none,
        height: height,
        fontFamily: fontFamily,
      ),
      textHeightBehavior: heightBehavior,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
