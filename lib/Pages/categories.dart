import 'package:flutter/material.dart';

final images = [
  'https://cdn.pixabay.com/photo/2014/04/17/23/26/environmental-protection-326923_960_720.jpg',
  'https://cdn.pixabay.com/photo/2015/07/30/14/36/hypertension-867855_960_720.jpg',
  'https://cdn.pixabay.com/photo/2014/12/10/20/48/laboratory-563423_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/11/09/16/24/virus-1812092_960_720.jpg',
  'https://cdn.pixabay.com/photo/2020/03/29/02/15/dettol-4979041_960_720.jpg',
  'https://cdn.pixabay.com/photo/2013/07/13/11/44/capsule-158568_960_720.png',
  'https://cdn.pixabay.com/photo/2017/06/23/01/16/coffee-drink-2433133_960_720.jpg',
  'https://cdn.pixabay.com/photo/2014/04/17/23/26/environmental-protection-326923_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/11/09/16/24/virus-1812092_960_720.jpg',
];

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Select Categories",
          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
      Expanded(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 5.0,
          children: images.map((index) {
            return CatCard(index);
          }).toList(),
        ),
      ),
    ]);
  }
}

class CatCard extends StatelessWidget {
  late final String image;
  final String text = "data";

  CatCard(final String image, {Key? key}) : super(key: key) {
    this.image = image;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("object");
      },
      child: Card(
        elevation: 5.0,
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
              ),
            )
          ],
        ),
      ),
    );
  }
}
