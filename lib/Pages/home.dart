import 'package:flutter/material.dart';
import 'package:m_pharma/widgets/carousel.dart';
import 'package:m_pharma/widgets/horizontal_list.dart';

final images = [
  'https://cdn.pixabay.com/photo/2014/04/17/23/26/environmental-protection-326923_960_720.jpg',
  'https://cdn.pixabay.com/photo/2015/07/30/14/36/hypertension-867855_960_720.jpg',
  'https://cdn.pixabay.com/photo/2014/12/10/20/48/laboratory-563423_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/11/09/16/24/virus-1812092_960_720.jpg'
];

var horiImages = [
  'https://cdn.pixabay.com/photo/2020/03/29/02/15/dettol-4979041_960_720.jpg',
  'https://cdn.pixabay.com/photo/2013/07/13/11/44/capsule-158568_960_720.png',
  'https://cdn.pixabay.com/photo/2017/06/23/01/16/coffee-drink-2433133_960_720.jpg',
  'https://cdn.pixabay.com/photo/2014/04/17/23/26/environmental-protection-326923_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/11/09/16/24/virus-1812092_960_720.jpg',
];

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Courosel(images),
          HorizontalList(horiImages),
          _imageList,
        ],
      ),
    );
  }
}

final Widget _imageList = Column(
  children: horiImages.map((img) {
    return Card(
      elevation: 6.0,
      child: Image.network(
        img,
        fit: BoxFit.fill,
      ),
      margin: const EdgeInsets.all(12.0),
    );
  }).toList(),
);
