import 'package:flutter/material.dart';
import 'package:seccion7_fluttercourse/router/app_routes.dart';
import 'package:seccion7_fluttercourse/theme/app_theme.dart';

import 'package:seccion7_fluttercourse/ui/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}
