import 'package:flutter/material.dart';

late List<String> images;

class HorizontalList extends StatefulWidget {
  HorizontalList(pics, {Key? key}) : super(key: key) {
    images = pics;
  }

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: images.map((link) {
        return Column(children: [
          Card(
            elevation: 5.0,
            child: Image.network(
              link,
              fit: BoxFit.fill,
              width: 110.0,
              height: 90.0,
            ),
            margin: const EdgeInsets.all(10.0),
          ),
          const Text(
            "Home\nand Care",
            overflow: TextOverflow.visible,
            softWrap: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ]);
      }).toList()),
    );
  }
}
