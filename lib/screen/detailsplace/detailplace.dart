import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/helper/data.dart';

class DetailPlacePage extends StatefulWidget {
  static String routeName = "/detailplacepage";
  final NewPlace place;

  const DetailPlacePage({Key? key, required this.place}) : super(key: key);
  @override
  _DetailPlacePageState createState() => _DetailPlacePageState();
}

class _DetailPlacePageState extends State<DetailPlacePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Stack(
            children: [
              Hero(
                  tag: widget.place.images[0],
                  child: PageView(
                    children: widget.place.images.map((image) {
                      return ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(image), fit: BoxFit.cover)),
                        ),
                      );
                    }).toList(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
