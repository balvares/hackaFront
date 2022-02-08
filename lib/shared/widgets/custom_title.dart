// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {

  final String text;
  final double size;
  final Color color;
  final TextAlign align;

  const CustomTitle({
    this.align = TextAlign.start,
    this.color = Colors.white,
    this.text = '',
    this.size = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    
    final TextStyle _style = GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: size
    );

    return Text(
      text,
      style: _style,
      softWrap: true,
      overflow: TextOverflow.fade,
      textAlign: align,
    );
  }
}
