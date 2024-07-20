

import 'package:flutter/material.dart';
import 'package:musaeid/helper/utils/pallete.dart';
import 'package:sizer/sizer.dart';


class StyledText extends StatelessWidget {
  final TextAlign? align;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextOverflow? overflow;

  const StyledText(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.color = Pallete.textColor , this.overflow,
      this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {

        return Text(
          text,
          textAlign: align,
          style: TextStyle(
            fontFamily: "Tajawal",
            fontSize: fontSize ,
            fontWeight: fontWeight ?? FontWeight.bold,
            color: color,
          ),
          overflow: overflow,
        );

  }
}

class CustomStyles {
  static TextStyle customTextStyle(BuildContext context) {

    return TextStyle(
      fontFamily: "ClashDisplay",
      fontWeight: FontWeight.w600,
      fontSize:18.sp,
      color:Colors.cyan
    );
  }

  static TextStyle customHintStyle(BuildContext context) {

    return TextStyle(
      fontFamily: "ClashDisplay",
      fontSize:14.sp,
      fontWeight: FontWeight.bold,
      color:Pallete.grey
    );
  }
}
