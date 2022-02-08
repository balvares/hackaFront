import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hackafront/app/modules/login/pages/login_page.dart';

import 'modules/login/dashboard/pages/dashboard_page.dart';

class HackaFront extends StatelessWidget {
  const HackaFront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'LIO FOTA',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      home: const LoginPage( ),
      getPages: [
        GetPage(name: "/", page: () => const LoginPage()),
        GetPage(name: "/dashboard", page: () => const DashboardPage()),
      ],
    );
  }
}
