import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Articulos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        reverse: false,
        viewportFraction: 0.95,
        height: 300.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
      ),
      items: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/image/audifonos.jpg")),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/image/audifonos2.jpg"), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
