import 'package:flutter/material.dart';
import 'package:hackafront/shared/widgets/custom_label.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  @override
  final Size preferredSize;

  final Widget? title;
  final double height;
  final Color? fontColor;
  final Color backgroundColor;
  final FontWeight? fontWeight;

  // ignore: use_key_in_widget_constructors
  CustomAppBar({
    this.title,
    this.height = 250,
    this.fontColor,
    this.fontWeight,
    this.backgroundColor = Colors.blue,
  }): preferredSize = Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      title: title,
      elevation: 0.0,
      titleSpacing: 120,
      centerTitle: false,
      leading: Container(),
      backgroundColor: backgroundColor,
      actions: [
        Padding(
          padding: const EdgeInsets.all(10), 
          child: Column(
            children: const [
              CustomLabel(text: 'Olá, Bruna', fontWeight: FontWeight.bold, align: TextAlign.right,),
              CustomLabel(text: 'sair', fontWeight: FontWeight.normal, align: TextAlign.right,),
            ]
          )
        )
      ],
    );
  }
}
