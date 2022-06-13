import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OfertaCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        reverse: false,
        viewportFraction: 0.95,
        height: 230.0,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
      ),
      items: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFFFCA28),
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(image: AssetImage("assets/image/papa2.png"), fit: BoxFit.cover),
              border: Border.all(
                color: Colors.white,
                width: 5,
              )),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFFFCA28),
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(image: AssetImage("assets/image/venta-dia-del-padre.jpg"), fit: BoxFit.cover),
              border: Border.all(
                color: Colors.white,
                width: 5,
              )),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFFFCA28),
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(image: AssetImage("assets/image/papa3.jpg"), fit: BoxFit.cover),
              border: Border.all(
                color: Colors.white,
                width: 5,
              )),
        ),
      ],
    );
  }
}
