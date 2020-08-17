import 'package:flutter/material.dart';
import 'package:staless/src/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: AppStaless(),
      ),
    );
  }
}
