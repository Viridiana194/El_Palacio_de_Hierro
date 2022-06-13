import 'package:flutter/material.dart';
import 'package:palaciodehierro/models/navegacion.dart';

class Secciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _Navegador(context),
            _Seccion(context),
            _ProductosState(context)
          ],
        ),
      ),
    );
  }

  Widget _Navegador(context) {
    return Navegacion();
  }

  Widget _Seccion(context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: Text(
                "Blusas",
              ),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Color(0xFFE0E0E0),
                minimumSize: Size(80, 80),
                shape: CircleBorder(),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/secciones");
              },
            ),
            TextButton(
              child: Text(
                "Pantalones",
              ),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Color(0xFFE0E0E0),
                minimumSize: Size(80, 80),
                shape: CircleBorder(),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "Vestidos",
              ),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Color(0xFFE0E0E0),
                minimumSize: Size(80, 80),
                shape: CircleBorder(),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text(
                "Deportiva",
              ),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Color(0xFFE0E0E0),
                minimumSize: Size(80, 80),
                shape: CircleBorder(),
              ),
              onPressed: () {},
            ),
          ],
        ));
  }

  Widget _Sugest(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
      child: Text(
        'Populares',
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  Widget _ProductosState(context) {
    return ListView(
      children: [
        InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/articulo");
            },
            child: Card(
                child: ListTile(
                    title: Text("Jeans Boyfriend Mujer"),
                    subtitle: Text("899.50"),
                    leading: Image(
                      image: AssetImage('assets/image/jeans2.jpg'),
                      height: 100,
                    )))),
        InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/articulo");
            },
            child: Card(
                child: ListTile(
                    title: Text("Vestido de Playa corto con flores Mujer"),
                    subtitle: Text("1,190.00"),
                    leading: Image(
                      image: AssetImage('assets/image/vestido3.jpg'),
                      height: 100,
                    )))),
        InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/articulo");
            },
            child: Card(
                child: ListTile(
                    title: Text("Chaleco Mujer"),
                    subtitle: Text("749.50"),
                    leading: Image(
                      image: AssetImage('assets/image/sueter1.jpg'),
                      height: 100,
                    )))),
        InkWell(
            onTap: () {},
            child: Card(
                child: ListTile(
              leading: Image(
                image: AssetImage('assets/image/jeans1.jpg'),
                height: 100,
              ),
              title: Text("Jeans recto Mujer"),
              subtitle: Text("7,490.00"),
            ))),
        InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                title: Text("Blusa Crop Top de manga larga Mujer"),
                subtitle: Text("674.25"),
                leading: Image(
                  image: AssetImage('assets/image/vestido2.jpg'),
                  height: 100,
                ),
              ),
            )),
        InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                title: Text("Playera con manga corta Mujer"),
                subtitle: Text("392.00"),
                leading: Image(
                  image: AssetImage('assets/image/playera1.jpg'),
                  height: 100,
                ),
              ),
            )),
        InkWell(
            onTap: () {},
            child: Card(
              child: ListTile(
                title: Text("Falda larga de corte recto Mujer"),
                subtitle: Text("599.25"),
                leading: Image(
                  image: AssetImage('assets/image/falda1.jpg'),
                  height: 100,
                ),
              ),
            )),
      ],
      padding: EdgeInsets.all(10.0),
      shrinkWrap: true,
      itemExtent: 80,
    );
  }
}
