import 'package:flutter/material.dart';
import 'package:xpindo/constant.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = "/profilepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    "This Profile Page",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "Ini Menampilkan Profile Pengguna berikut atribute-atributnya, termasuk posisi staycation saat ini"),
                ],
              ),
            ),
          ),
        ));
  }
}
