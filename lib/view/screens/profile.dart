import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/imagepicker.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            // Important: Remov
            //e any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 50),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const ImagPicker();
                        });
                  },
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          child: image != null
                              ? Image.file(
                                  image!,
                                  width: 160,
                                  height: 160,
                                  fit: BoxFit.cover,
                                )
                              : Stack(children: [
                                  Container(
                                    height: 140,
                                    width: 115,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://i.pinimg.com/originals/50/05/f5/5005f514424141acf70727360add163d.png'),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: const Color(0xff126881),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                // ignore: unnecessary_const
                child: Text('My Account',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff126881),
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Co
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.favorite,
                              color: Color(0xff126881),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 28.0),
                              child: Text('My favorites',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff126881),
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 48.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff126881),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Co
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.people,
                              color: Color(0xff126881),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'My account',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff126881),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 48.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff126881),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.location_city,
                              color: Color(0xff126881),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Addresses',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff126881),
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 48.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff126881),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.receipt,
                              color: Color(0xff126881),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('My orders',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff126881),
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 48.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff126881),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.credit_card,
                              color: Color(0xff126881),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('My payment',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff126881),
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 48.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff126881),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.settings,
                              color: Color(0xff126881),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Stttings',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff126881),
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 48.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff126881),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
