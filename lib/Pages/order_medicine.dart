import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';

File? _capImage;

class OrderMedicine extends StatefulWidget {
  const OrderMedicine({Key? key}) : super(key: key);

  @override
  State<OrderMedicine> createState() => _OrderMedicineState();
}

Location? currentLocation;

class _OrderMedicineState extends State<OrderMedicine> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: (_capImage == null)
                ? const Center(child: Text("Upload Image"))
                : Image.file(
                    _capImage!,
                    fit: BoxFit.fill,
                  ),
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black),
            ),
            margin: const EdgeInsets.all(10.0),
            height: 350.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: () => _pickImageFromCamera(),
                label: const Text(
                  "Camera",
                  style: TextStyle(color: Colors.black),
                ),
                icon: const Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.only(
                        top: 15.0, bottom: 15.0, right: 40.0, left: 40.0),
                    side: const BorderSide(color: Colors.blue, width: 3.0)),
              ),
              ElevatedButton.icon(
                onPressed: () async => _pickImageFromGalery(),
                label: const Text(
                  "Gallery",
                  style: TextStyle(color: Colors.black),
                ),
                icon: const Icon(
                  Icons.photo,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.only(
                        top: 15.0, bottom: 15.0, right: 40.0, left: 40.0),
                    side: const BorderSide(color: Colors.blue, width: 3.0)),
              ),
            ],
          ),
          const Card(
            margin: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }

  _pickImageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() => _capImage = File(image.path));
    }
  }

  _pickImageFromGalery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() => _capImage = File(image.path));
    }
  }
}
