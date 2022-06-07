import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

late List<String> images;

class Courosel extends StatefulWidget {
  Courosel(List<String> image, {Key? key}) : super(key: key) {
    images = image;
  }
  @override
  State<Courosel> createState() => _CouroselState();
}

class _CouroselState extends State<Courosel> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (context, index, realIndex) {
          return (Image.network(
            images[index],
            fit: BoxFit.fill,
            width: double.infinity,
          ));
        },
        options: CarouselOptions(
          viewportFraction: 1,
          aspectRatio: 16.0 / 9.0,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 900),
          pauseAutoPlayOnTouch: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: images.map(
          (image) {
            int index2 = images.indexOf(image);
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index2 == index
                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                      : const Color.fromRGBO(0, 0, 0, 0.4)),
            );
          },
        ).toList(),
      ),
    ]);
  }
}
