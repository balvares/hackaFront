import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hackafront/shared/themes/colors/app_theme_colors.dart';

class CustomButton extends StatelessWidget {

  final Color? color; 
  final String? label;
  final double width;
  final double fontSize;
  final Color fontColor;
  final double elevation;
  final EdgeInsets margin;
  final Color splashColor;
  final Function() onPressed;

  // ignore: use_key_in_widget_constructors
  const CustomButton({
    this.color,
    this.width = 300,
    this.fontSize = 12,
    this.elevation = 0.0,
    required this.onPressed,
    this.splashColor = Colors.white,
    this.margin = const EdgeInsets.all(5),
    this.fontColor = AppThemeColors.mediumGrey,
    @required this.label,
  }): assert(label != null);
  
  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      margin: margin,
      child: MaterialButton(
        onPressed: onPressed,
        hoverElevation: 0.0,
        focusElevation: 0.0,
        elevation: elevation,
        disabledColor: AppThemeColors.mediumGrey,
        disabledTextColor: AppThemeColors.grey75,
        color: color,
        textColor: fontColor,
        height: 50,
        child: Text(
          label!, 
          style: GoogleFonts.montserrat(
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            color: fontColor
          ),
      ))
    );
  }
}
