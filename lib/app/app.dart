import 'package:citacoes/config/routes/routes.dart';
import 'package:citacoes/config/theme/app_theme.dart';
import 'package:citacoes/utils/binding/initial_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Citações',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      getPages: AppPages.pages,
      initialRoute: AppPages.initalPage,
      initialBinding: InitialBinding(),
    );
  }
}
