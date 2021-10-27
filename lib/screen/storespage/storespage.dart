import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoresPage extends StatelessWidget {
  static String routeName = "/storespage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: (AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Icon(Icons.arrow_back_ios_outlined)),
            ),
          ),
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/logo.png",
                height: 26,
              ),
              Text(
                "Stores",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                " Near",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ))
          ],
        )),
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    "This Stores List with radius 1 Km from you stand",
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
