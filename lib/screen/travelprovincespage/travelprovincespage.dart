import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/constant.dart';
import 'package:xpindo/screen/travelprovincespage/components/body.dart';

class TravelProvincesPage extends StatelessWidget {
  static String routeName = "/travelprovincespage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
              "Travel",
              style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              " Province",
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
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
      ),
      body: Body(),
    );
  }
}
