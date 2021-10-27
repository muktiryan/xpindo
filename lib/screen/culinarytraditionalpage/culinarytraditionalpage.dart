import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/screen/culinarytraditionalpage/components/body.dart';

class CulinaryTraditionalPage extends StatelessWidget {
  static String routeName = "/culinarytraditionalPage";
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
                "Culinaries",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
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
        body: Body());
  }
}
