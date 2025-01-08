import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.welcome,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
