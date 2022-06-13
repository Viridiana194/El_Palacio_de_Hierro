import 'package:flutter/material.dart';
import 'package:palaciodehierro/models/navegacion.dart';

class Compra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _Navegacion(context),
            _Titulo(context),
            _CardCompra(),
            _Total(context),
            _BtnCompra(context)
          ],
        ),
      ),
    );
  }

  Widget _Navegacion(context) {
    return Navegacion();
  }

  Widget _Titulo(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 20.0),
      child: Text(
        'Tu bolsa (2)',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }

  Widget _CardCompra() {
    return ListView(
      children: [
        InkWell(
            onTap: () {},
            child: Card(
                child: ListTile(
                    title: Text("Bolso Tote con Monogram"),
                    subtitle: Text("4,195.00"),
                    leading: Image(
                      image: AssetImage('assets/image/bolso.jpg'),
                      height: 100,
                    )))),
        InkWell(
            onTap: () {},
            child: Card(
                child: ListTile(
                    title: Text("Audífonos Inalámbricos Bluetooth Solo3 Negro"),
                    subtitle: Text("4,499.00"),
                    leading: Image(
                      image: AssetImage('assets/image/audifonos.jpg'),
                      height: 100,
                    )))),
      ],
      padding: EdgeInsets.all(10.0),
      shrinkWrap: true,
      itemExtent: 80,
    );
  }

  Widget _Total(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Costo de envío: Gratis',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Total: 8,694.00',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }

  Widget _BtnCompra(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFCA28),
              onPrimary: Colors.black,
              padding: EdgeInsets.only(left: 90.0, right: 90.0, top: 20.0, bottom: 20.0),
            ),
            child: Text(
              "Comprar",
              style: Theme.of(context).textTheme.headline2,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
