import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/736x/22/ea/1a/22ea1ac5b103856682540d811015c3bd.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[titulo(), nombre(), icon()],
      ),
    ),
  );
}

Widget titulo() {
  return Text(
    "LayApp",
    style: TextStyle(
      color: Colors.white,
      fontSize: 55.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget nombre() {
  return Text(
    "Hola Mundo",
    style: TextStyle(
      color: Colors.white,
      fontSize: 30.0,
    ),
  );
}

Widget icon() {
  return Icon(Icons.star, size: 100, color: Colors.yellow[100]);
}
