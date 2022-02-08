import 'package:flutter/material.dart';
import 'package:hackafront/shared/themes/colors/app_theme_colors.dart';
import 'package:hackafront/shared/widgets/custom_button.dart';

import 'package:hackafront/shared/widgets/custom_title.dart';
import 'package:hackafront/shared/widgets/custom_app_bar.dart';
import 'package:hackafront/shared/widgets/custom_subtitle.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

//   Widget _buildTable() {
// 
//     List<DataColumn> columns;
//     
// 
//     return DataTable(columns: columns, rows: rows);
//   }

  Widget _buildButton(String label, Color color, Color fontColor) {

    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 180),
        child: CustomButton(
          onPressed: () {}, 
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
        text: 'Dashboard',
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
            _buildButton('Nova atualização', Colors.blue, Colors.white)

          ],)
        ],
      ),
    );
  }

  Widget _buildTitle() {

    return const CustomTitle(
      size: 64,
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
