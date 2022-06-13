import 'package:flutter/material.dart';
import 'package:palaciodehierro/models/navegacion.dart';

class Categorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _Navegador(context),
            _Portada(),
            _Seccion(context),
            _Sugest(context),
            _ProductosState(context)
          ],
        ),
      ),
    );
  }

  Widget _Navegador(context) {
    return Navegacion();
  }

  Widget _Portada() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Column(
        children: [
          Image(image: AssetImage("assets/image/portada2.png"))
        ],
      ),
    );
  }

  Widget _Seccion(context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: Text(
                "Ropa",
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
                "Calzado",
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
                "Bolso",
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
                "Joyería",
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
                    title: Text("Vestido corto Mujer"),
                    subtitle: Text("674.25"),
                    leading: Image(
                      image: AssetImage('assets/image/vestido1.jpg'),
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
