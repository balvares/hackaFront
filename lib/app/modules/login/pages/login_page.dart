import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:hackafront/shared/widgets/custom_button.dart';
import 'package:hackafront/shared/widgets/custom_text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _secretController = TextEditingController();

  Widget _buildTextInput(String label, TextEditingController controller) {

    return CustomTextInput(
      controller: controller, 
      color: Colors.white,
      width: 300,
      label: label,
      labelColor: Colors.black
    );
  }

  Widget _buildButton(String label) {

    return CustomButton(
      label: "Entrar",
      color: Colors.blue,
      onPressed: () => Get.toNamed("/dashboard"),
      fontColor: Colors.white,
    );
  }
 
  Widget _buildForm() {

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60.0),
          _buildTextInput("E-mail", _emailController),
          _buildTextInput("Senha", _secretController),
          _buildButton("Entrar"),
        ],
      ),
    );
  }

  Widget _buildBody() {

    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/shared/assets/images/bg.jpg'),
            fit: BoxFit.fill
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _buildForm(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _buildBody(),
    );
  }
}
