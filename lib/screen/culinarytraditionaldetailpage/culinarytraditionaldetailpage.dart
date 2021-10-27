import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/helper/data.dart';

class CulinaryTraditioanlDetailPage extends StatefulWidget {
  static String routeName = "/culinarytraditioanldetailPage";
  final MediaThumbnail itemThumbnail;

  const CulinaryTraditioanlDetailPage({Key? key, required this.itemThumbnail})
      : super(key: key);
  @override
  _CulinaryTraditioanlDetailPageState createState() =>
      _CulinaryTraditioanlDetailPageState();
}

class _CulinaryTraditioanlDetailPageState
    extends State<CulinaryTraditioanlDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage(widget.itemThumbnail.thumbpath),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 24, right: 24),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.only(left: 24, right: 24),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.itemThumbnail.title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    widget.itemThumbnail.province,
                                    style: TextStyle(
                                        color: Colors.yellow[700],
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 28,
                                  ),
                                ]),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            height: 30,
                          )
                        ]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FeatureTile(
                    mapIdx: 1,
                    label: "Back",
                    icondata: Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xff546C64),
                    ),
                    onMenuSelect: (int mnuIdx) {
                      Navigator.of(context).pop();
                    },
                  ),
                  FeatureTile(
                    mapIdx: 4,
                    label: "Find Place",
                    icondata: Icon(
                      Icons.place_rounded,
                      color: Color(0xff546C64),
                    ),
                    onMenuSelect: (int mnuIdx) {
                      setState(() {});
                    },
                  ),
                  FeatureTile(
                    mapIdx: 2,
                    label: "Ingridient",
                    icondata: Icon(
                      Icons.list_rounded,
                      color: Color(0xff546C64),
                    ),
                    onMenuSelect: (int mnuIdx) {
                      setState(() {});
                    },
                  ),
                  FeatureTile(
                    mapIdx: 3,
                    label: "Order",
                    icondata: Icon(
                      Icons.add_shopping_cart_rounded,
                      color: Color(0xff546C64),
                    ),
                    onMenuSelect: (int mnuIdx) {
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: (MediaQuery.of(context).size.height / 2) + 50,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Text(
                          widget.itemThumbnail.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff546C64)),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage(widget.itemThumbnail.thumbpath),
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}

class FeatureTile extends StatelessWidget {
  final MenuCallback onMenuSelect;
  final Icon icondata;
  final String label;
  final int mapIdx;
  const FeatureTile(
      {Key? key,
      required this.icondata,
      required this.label,
      required this.mapIdx,
      required this.onMenuSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: GestureDetector(
        onTap: () {
          onMenuSelect(mapIdx);
        },
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff546C64)),
                    borderRadius: BorderRadius.circular(40)),
                child: icondata,
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                  width: 70,
                  child: Text(
                    label,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

typedef MenuCallback = void Function(int mnuIdx);
