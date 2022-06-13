import 'package:flutter/material.dart';
import 'package:palaciodehierro/models/ofertas.dart';
import 'package:palaciodehierro/models/navegacion.dart';
import 'package:palaciodehierro/main.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _Navegacion(context),
            _ofertaCarousel(),
            _Sugest(context),
            _ProductosState(context),
          ],
        ),
      ),
    );
  }

  Widget _Navegacion(context) {
    return Navegacion();
  }
}

Widget _ofertaCarousel() {
  return Padding(padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0), child: OfertaCarousel());
}

Widget _Sugest(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0),
    child: Text(
      'Sugerencias',
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
                  title: Text("Audífonos Inalámbricos Bluetooth Solo3 Negro"),
                  subtitle: Text("4,499.00"),
                  leading: Image(
                    image: AssetImage('assets/image/audifonos.jpg'),
                    height: 100,
                  )))),
      InkWell(
          onTap: () {},
          child: Card(
              child: ListTile(
            leading: Image(
              image: AssetImage('assets/image/mochila.jpg'),
              height: 100,
            ),
            title: Text("Mochila Kånken Mujer"),
            subtitle: Text("2,190.00"),
          ))),
      InkWell(
          onTap: () {},
          child: Card(
            child: ListTile(
              title: Text("Tenis Cell Vive Hombre"),
              subtitle: Text("1,699.00"),
              leading: Image(
                image: AssetImage('assets/image/tenis.jpg'),
                height: 100,
              ),
            ),
          )),
      InkWell(
          onTap: () {},
          child: Card(
            child: ListTile(
              title: Text("Consola PlayStation 5 PS5"),
              subtitle: Text("13,999.00"),
              leading: Image(
                image: AssetImage('assets/image/play.jpg'),
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
