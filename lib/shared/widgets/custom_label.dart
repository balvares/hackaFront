// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLabel extends StatelessWidget {

  final double size;
  final Color? color;
  final String? text;
  final TextAlign align;
  final FontWeight fontWeight;

  const CustomLabel({
    this.color,
    this.size = 12,
    this.fontWeight = FontWeight.normal,
    required this.text,
    this.align = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    
    final TextStyle _style = GoogleFonts.montserrat(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
    );

    return Text(
      text!,
      maxLines: 10,
      style: _style,
      softWrap: true,
      textAlign: align,
    );
  }
}
