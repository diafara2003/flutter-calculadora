import 'package:flutter/material.dart';

class ContadorPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPagesState();
}

class _ContadorPagesState extends State<ContadorPages> {
  final _estiloText = new TextStyle(fontSize: 25.0);
  int _contador = 0;

  void _sumar() {
    setState(() => _contador += 1);
  }

  void _restar() {
    setState(() => _contador -= 1);
  }

  void _inicializar() {
    setState(() => _contador = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("StateFul"), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Numero de clicks",
                style: _estiloText,
              ),
              Text(
                "$_contador",
                style: _estiloText,
              )
            ],
          ),
        ),
        floatingActionButton: crearBotones());
  }

  crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _inicializar,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _restar,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _sumar,
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
