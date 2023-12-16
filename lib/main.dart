import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/controller/counter_controller.dart';
import 'package:provider_project/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter_controller(),
      child: MaterialApp(
        home: Home_Screen(),
      ),
    );
  }
}
