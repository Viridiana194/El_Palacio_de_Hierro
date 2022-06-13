import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palaciodehierro/models/navegacion.dart';
import 'package:palaciodehierro/models/articulos.dart';

class Articulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _Navegacion(context),
            _Image(context),
            _Nombre(context),
            _Agregar(context),
            //_Total(context),
            //_BtnCompra(context)
          ],
        ),
      ),
    );
  }

  Widget _Navegacion(context) {
    return Navegacion();
  }

  Widget _Image(context) {
    return Articulos();
  }

  Widget _Nombre(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'BEATS',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Audífonos Inalámbricos Bluetooth Solo3 Negro',
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            '3,599.20',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }

  Widget _Agregar(context) {
    int _contador = 0;

    void incrementando(bool seIncrementa) {
      if (seIncrementa) {
        _contador = _contador + 1;
      } else {
        _contador = _contador - 1;
      }
    }

    return Container(
      height: 100,
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: <Widget>[
                IconButton(
                  iconSize: 20.0,
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    incrementando(false);
                    print('$_contador');
                  },
                ),
                Text(_contador.toString()),
                IconButton(
                  iconSize: 20.0,
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    incrementando(true);
                    print('$_contador');
                  },
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
              child: Text('Añadir a la bolsa', style: Theme.of(context).textTheme.headline4),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
