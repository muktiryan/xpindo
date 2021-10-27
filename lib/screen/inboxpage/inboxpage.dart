import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/constant.dart';

class InboxPage extends StatelessWidget {
  static String routeName = "/inboxpage";
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
                    "This Personal Inbox",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text("Ini akan menyimpan semua Message dari user"),
                ],
              ),
            ),
          ),
        ));
  }
}
