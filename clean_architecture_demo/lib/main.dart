import 'package:CleanArchitectureDemo/ui/user/user_creation_demo_page.dart';
import 'package:flutter/material.dart';
import 'di/service_locator.dart';

void main() async {
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserCreationDemoPage(),
    );
  }
}
