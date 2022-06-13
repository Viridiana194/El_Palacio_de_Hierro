import 'package:flutter/material.dart';
import 'package:palaciodehierro/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'El Palacio de Hierro',
      home: Articulo(),
      initialRoute: "/inicio",
      routes: {
        "/inicio": (BuildContext context) => Inicio(),
        "/menu": (BuildContext context) => Menu(),
        "/compra": (BuildContext context) => Compra(),
        "/articulo": (BuildContext context) => Articulo(),
        "/categorias": (BuildContext context) => Categorias(),
        "/secciones": (BuildContext context) => Secciones(),
      },
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFFBDBDBD),
          ),
          headline2: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
            color: Color(0xFF212121),
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            color: Color(0xFF212121),
          ),
          headline4: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
