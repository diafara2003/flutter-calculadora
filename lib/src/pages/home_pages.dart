import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  final estiloText = new TextStyle(fontSize: 25.0);
  final contador = 10;
  void incrementar() => {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App bar"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de click",
              style: estiloText,
            ),
            Text(
              "$contador",
              style: estiloText,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementar,
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
        elevation: 10.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
