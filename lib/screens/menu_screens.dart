import 'package:flutter/material.dart';
import 'package:palaciodehierro/main.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _Volver(context),
            _Cate(context),
          ],
        ),
      ),
    );
  }

  Widget _Volver(context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        IconButton(
          iconSize: 35.0,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, "/inicio");
          },
        ),
      ]),
    );
  }

  Widget _Cate(context) {
    return ListView(
      children: [
        InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/categorias");
            },
            child: Container(
                padding: EdgeInsets.only(bottom: 9.0),
                child: Text(
                  'Mujer',
                  style: Theme.of(context).textTheme.headline2,
                ))),
        InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(bottom: 9.0),
                child: Text(
                  'Hombre',
                  style: Theme.of(context).textTheme.headline2,
                ))),
        InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(bottom: 9.0),
                child: Text(
                  'Niños',
                  style: Theme.of(context).textTheme.headline2,
                ))),
        InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(bottom: 9.0),
                child: Text(
                  'Joyería y relojes',
                  style: Theme.of(context).textTheme.headline2,
                ))),
        InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(bottom: 9.0),
                child: Text(
                  'Belleza',
                  style: Theme.of(context).textTheme.headline2,
                ))),
        InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(bottom: 9.0),
                child: Text(
                  'Hogar',
                  style: Theme.of(context).textTheme.headline2,
                ))),
        InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(bottom: 9.0),
                child: Text(
                  'Electónica',
                  style: Theme.of(context).textTheme.headline2,
                ))),
      ],
      padding: EdgeInsets.all(30.0),
      shrinkWrap: true,
    );
  }
}
