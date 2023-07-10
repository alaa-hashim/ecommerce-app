// ignore_for_file: avoid_unnecessary_containers

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagPicker extends StatefulWidget {
  const ImagPicker({Key? key}) : super(key: key);

  @override
  State<ImagPicker> createState() => _ImagPickerState();
}

class _ImagPickerState extends State<ImagPicker> {
  File? image;
  Future pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);

    if (image == null) return;
    final iamgetemporary = File(image.path);

    setState(() {
      this.image = iamgetemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: SizedBox(
            height: 150,
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Please Choose Image",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff126881),
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        pickImage(ImageSource.gallery);
                      },
                      child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.photo_outlined,
                                size: 20,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "From Gallery",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff126881),
                                ),
                              )
                            ],
                          )),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    InkWell(
                      onTap: () async {
                        pickImage(ImageSource.camera);
                      },
                      child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.camera,
                                size: 20,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "From Camera",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff126881),
                                ),
                              ),
                            ],
                          )),
                    )
                  ]),
            )),
      ),
    );
  }
}
