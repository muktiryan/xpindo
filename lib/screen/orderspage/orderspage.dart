import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/constant.dart';

class OrderPage extends StatelessWidget {
  static String routeName = "/orderpage";
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
                    "This Orders List",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text("Ini Menampilkan semua order yang dilakukan"),
                ],
              ),
            ),
          ),
        ));
  }
}
