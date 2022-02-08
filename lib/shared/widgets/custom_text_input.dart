import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInput extends StatelessWidget {

  final Color color;
  final String? label;
  final double? width;
  final bool enabled;
  final int maxLength;
  final bool obscureText;
  final Color labelColor;
  final String placeholder;
  final TextAlign textAlign;
  final TextEditingController? controller;

  const CustomTextInput({Key? key, 
    this.width,
    this.color = Colors.white,
    required this.label,
    this.enabled = true,
    this.maxLength = 50,
    this.textAlign = TextAlign.start,
    this.labelColor = Colors.black,
    this.placeholder = '',
    this.obscureText = false,
    @required this.controller,
  }): assert(controller != null), super(key: key);

  Widget _buildLabel(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Text(
        label!,
        style: TextStyle(
          fontSize: 12, 
          color: labelColor
        ),
      ),
    );
  }

  Widget _buildInputText(BuildContext context) {

    final BoxDecoration decoration = BoxDecoration(
      color: enabled ? color : Colors.grey[400],
      borderRadius: BorderRadius.circular(5.0),
    );

    final TextFormField input = TextFormField(
      enabled: enabled,
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      textAlign: textAlign,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
      ],
      decoration: InputDecoration(
        hintText: placeholder,
        border: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
    );

    return Container(
      height: 48.0,
      child: input,
      decoration: decoration,
      padding: const EdgeInsets.symmetric(horizontal: 20.0,),
      width: width,
    );
  }

  Widget _buildInputField(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (label != null) ? _buildLabel(context) : const SizedBox(), 
          (label != null) ? const SizedBox(height: 7.5,) : const SizedBox(),
          _buildInputText(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return _buildInputField(context);
  }
}
