import 'package:flutter/material.dart';
import 'package:xpindo/constant.dart';

class HistoryPage extends StatefulWidget {
  static String routeName = "/historypage";
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                    "This History List",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "Ini Menampilkan semua Riwayat Order yang telah dilakukan"),
                ],
              ),
            ),
          ),
        ));
  }
}
