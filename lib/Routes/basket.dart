import 'package:flutter/material.dart';

class BasketCart extends StatefulWidget {
  const BasketCart({Key? key}) : super(key: key);

  @override
  _BasketCartState createState() => _BasketCartState();
}

class _BasketCartState extends State<BasketCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Column(
        children: const [
          Center(
            child: Text("This is my Cart"),
          )
        ],
      ),
    );
  }
}
