import 'package:flutter/material.dart';
import 'package:staless/src/pages/contador_pages.dart';

class AppStaless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: ContadorPages(),
      ),
    );
  }
}
