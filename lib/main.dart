import 'package:flutter/material.dart';
import '01_dialog/alert_dialog.dart';
import '02_gridview_builder/gridview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewBuilderWidget(),
    );
  }
}
