import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hackafront/shared/themes/colors/app_theme_colors.dart';

import 'package:hackafront/shared/widgets/custom_label.dart';
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

  Widget _buildTable() {
    
    return DataTable(
      columnSpacing: 400,
      columns: const <DataColumn>[
        DataColumn(
          label: CustomLabel(
            text:'Data/Hora',
            color: AppThemeColors.mediumGrey,
          ),
        ),
        DataColumn(
          label: CustomLabel(
            text:'Release',
            color: AppThemeColors.mediumGrey,
          ),
        ),
        DataColumn(
          label: CustomLabel(
            text:'Status',
            color: AppThemeColors.mediumGrey,
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(
              CustomLabel(text: '07/02/2022   22:57', color: AppThemeColors.mediumGrey,)
            ),
            DataCell(
              CustomLabel(text: 'UCBC2022020701', color: Colors.blue)
            ),
            DataCell(
              CustomLabel(text: 'OK', color: AppThemeColors.green,)
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              CustomLabel(text: '07/02/2022   22:57', color: AppThemeColors.mediumGrey,)
            ),
            DataCell(
              CustomLabel(text: 'UCBC2022020701', color: Colors.blue)
            ),
            DataCell(
              CustomLabel(text: 'OK', color: AppThemeColors.green,)
            ),
          ],
          ),
        DataRow(
          cells: <DataCell>[
            DataCell(
              CustomLabel(text: '07/02/2022   22:57', color: AppThemeColors.mediumGrey,)
            ),
            DataCell(
              CustomLabel(text: 'UCBC2022020701', color: Colors.blue)
            ),
            DataCell(
              CustomLabel(text: 'OK', color: AppThemeColors.green,)
            ),
          ],
          ),
      ],
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
            _buildButton('Nova atualização', Colors.blue, Colors.white, () {
              Get.toNamed("/update");
            })
          ]),
          const SizedBox(height: 100,),
          _buildTable(),
          _buildButton('Ir para o histórico completo', AppThemeColors.grey25, AppThemeColors.grey75, () {
            Get.toNamed("/history");
          })
        ],
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
