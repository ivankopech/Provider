import 'package:flutter/material.dart';


void main(){
  runApp(App(mensaje: 'hola'));
}

class App extends StatelessWidget {
  App({ this.mensaje });
  final String mensaje;

  @override
  Widget build(BuildContext context) {
    return Provider<String>.value(
      value: mensaje,
      child: MaterialApp(
        home: Page(),
      ),
    );
}
}

class Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Texto(),
    );
  }
}

class Texto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mensaje = Provider.of<String>(context);
    return Text(
      mensaje, style: TextStyle(fontSize: 30));
  }
}