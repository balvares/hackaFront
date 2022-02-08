// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSubtitle extends StatelessWidget {

  final String text;
  final double size;
  final Color color;
  final TextAlign align;
  final FontWeight fontWeight;

  const CustomSubtitle({
    this.text = '',
    this.size = 12.0,
    this.color = Colors.white,
    this.align = TextAlign.start,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    
    final TextStyle _style = GoogleFonts.montserrat(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    );

    return Text(
      text,
      style: _style,
      softWrap: true,
      textAlign: align,
      overflow: TextOverflow.fade,
    );
  }
}
