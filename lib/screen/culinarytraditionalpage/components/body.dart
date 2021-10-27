import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/helper/data.dart';
import 'package:xpindo/screen/culinarytraditionaldetailpage/culinarytraditionaldetailpage.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<MediaThumbnail> lCulinaries = getCulinaryThumbList();

  @override
  void initState() {
    // TODO: implement initState
    //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
            physics: BouncingScrollPhysics(), children: buildCulinaryList()),
      ),
    );
  }

  List<Widget> buildCulinaryList() {
    List<Widget> list = [];
    for (var show in lCulinaries) {
      list.add(buildCulinary(show));
    }
    return list;
  }

  Widget buildCulinary(MediaThumbnail shw) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      CulinaryTraditioanlDetailPage(itemThumbnail: shw)));
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: Image.asset(
                shw.thumbpath,
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shw.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  constraints: new BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 160),
                  child: Text(
                    shw.description,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  constraints: new BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 128),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(""),
                      Text("Click to view",
                          style: TextStyle(fontSize: 10, color: Colors.green))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
