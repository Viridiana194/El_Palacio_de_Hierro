import 'package:flutter/material.dart';

void main() {
  runApp(Navegacion());
}

class Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            iconSize: 35.0,
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.pushNamed(context, "/menu");
            },
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/inicio");
            },
            child: Image(
              image: NetworkImage("data:image/png;base64,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"),
              height: 40.0,
            ),
          ),
          Row(
            children: <Widget>[
              IconButton(
                iconSize: 35.0,
                icon: const Icon(Icons.search_sharp),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 35.0,
                icon: const Icon(Icons.shopping_bag_outlined),
                onPressed: () {
                  Navigator.pushNamed(context, "/compra");
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}