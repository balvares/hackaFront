import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackafront/shared/themes/colors/app_theme_colors.dart';
import 'package:hackafront/shared/widgets/custom_app_bar.dart';
import 'package:hackafront/shared/widgets/custom_button.dart';
import 'package:hackafront/shared/widgets/custom_subtitle.dart';
import 'package:hackafront/shared/widgets/custom_text_input.dart';
import 'package:hackafront/shared/widgets/custom_title.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({ Key? key }) : super(key: key);

  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {

  final TextEditingController _releaseController = TextEditingController();

  Widget _buildTextInput(Color color, String label, TextEditingController controller) {

    return CustomTextInput(
      color: color, 
      label: label,
      controller: controller,
    );
  }

  Widget _buildButton(String label, Color color, Color fontColor, Function() onPressed) {

    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 180),
        child: CustomButton(
          onPressed: onPressed, 
          label: label, 
          color: color,
          fontColor: fontColor,
        ),
    );
  }

  Widget _buildSubtitle() {

    return const Padding(
      padding: EdgeInsets.only(top: 20, left: 180),
      child: CustomSubtitle(
        size: 48,
        text: 'Atualização de terminais',
        color: AppThemeColors.mediumGrey,
        fontWeight: FontWeight.w500,
      )
    );
  }

  Widget _buildBody() {

    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSubtitle(),
              _buildButton('Voltar ao início', AppThemeColors.grey25, AppThemeColors.grey75, () {
                Get.toNamed("/dashboard");
              })
            ]
          ),
          Row(
            children: [
              _buildTextInput(AppThemeColors.lightGrey, "Nro. da Release", _releaseController),
            ],
          ),


          const SizedBox(height: 100,),
          _buildButton('Enviar', Colors.blue, AppThemeColors.white, () {
            Get.toNamed("/history");
          }),
        ]
      ),
    );
  }

  Widget _buildTitle() {

    return const CustomTitle(
      size: 48,
      text: 'LIO FOTA',
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        height: 250, 
        fontColor: Colors.white, 
        fontWeight: FontWeight.bold, 
        backgroundColor: Colors.blue, 
        title: _buildTitle(),
      ),
      body: _buildBody(),
    );
  }
}