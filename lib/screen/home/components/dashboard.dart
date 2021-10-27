import 'package:flutter/material.dart';
import 'package:xpindo/constant.dart';
import 'package:xpindo/helper/data.dart';
import 'package:xpindo/screen/aboutindonesiapage/aboutindonesiapage.dart';
import 'package:xpindo/screen/culinarytraditionalpage/culinarytraditionalpage.dart';
import 'package:xpindo/screen/detailsplace/detailplace.dart';
import 'package:xpindo/screen/storespage/storespage.dart';
import 'package:xpindo/screen/travelprovincespage/travelprovincespage.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Place> places = getPlaceList();
  List<NewPlace> Nplaces = getNewPlaceList();
  List<Destination> destinations = getDestinationList();
  List<Featured> featureds = getFeaturedList();
  List<Featured> promos = getPromoList();

  _showModalBottomSheet() {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: (MediaQuery.of(context).size.height / 2) - 220,
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 2.0,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Hero(
                              tag: "assets/grab.jpg",
                              child: Container(
                                width: 80,
                                height: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/grab.jpg"),
                                        fit: BoxFit.cover)),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 12, bottom: 12, right: 12),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2.0,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Hero(
                              tag: "assets/gojeg.jpg",
                              child: Container(
                                width: 80,
                                height: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/gojeg.jpg"),
                                        fit: BoxFit.contain)),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 12, bottom: 12, right: 12),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 1,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: 80,
                                height: 60,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/carrental.png",
                                        height: 25,
                                        fit: BoxFit.fitHeight,
                                        color: Colors.blue[700],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Rent Car",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))),
          );
        });
  }

  _showModalBottomSheetFindHotel() {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: (MediaQuery.of(context).size.height / 2) - 220,
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 2.0,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Hero(
                              tag: "assets/traveloka.png",
                              child: Container(
                                width: 80,
                                height: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/traveloka.png"),
                                        fit: BoxFit.contain)),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 12, bottom: 12, right: 12),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2.0,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Hero(
                              tag: "assets/ticketcom.jpg",
                              child: Container(
                                width: 80,
                                height: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/ticketcom.jpg"),
                                        fit: BoxFit.contain)),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 12, bottom: 12, right: 12),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 1,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: 90,
                                height: 60,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/hotel.png",
                                        height: 20,
                                        fit: BoxFit.fitHeight,
                                        color: Colors.green[700],
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Find hotel",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))),
          );
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(">>>>>>>>>>>>> INITIAL DASHBOARD");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(1.0),
      children: [
        Container(
            height: 180,
            padding: EdgeInsets.only(top: 8, left: 16),
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: buildPlaces(),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Near You",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
        ),
        Container(
          height: 100,
          padding: EdgeInsets.only(left: 16),
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: buildDestinations(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Places recommended to visit",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
        ),
        Container(
          height: 90,
          child: PageView(
            physics: BouncingScrollPhysics(),
            children: buildFeatureds(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Promo and Discount",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
        ),
        Container(
          height: 90,
          child: PageView(
            physics: BouncingScrollPhysics(),
            children: buildPromos(),
          ),
        ),
      ],
    );
  }

  List<Widget> buildPlaces() {
    List<Widget> list = [];
    for (var place in Nplaces) {
      list.add(buildPlace(place));
    }
    return list;
  }

  Widget buildPlace(NewPlace place) {
    return GestureDetector(
      onTap: () {
        var item = place.typedetail;
        if (item == 1) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AboutIndonesiaPage(place: place)));
        } else if (item == 2) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TravelProvincesPage()));
        } else if (item == 3) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CulinaryTraditionalPage()));
        } else {
          print(">>>>>>>>>>>>>> Menu $item");
        }
      },
      child: Card(
        elevation: 2.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Hero(
          tag: place.images[0],
          child: Container(
            width: 230,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(place.images[0]), fit: BoxFit.cover)),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12, top: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.rss_feed,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, bottom: 12, right: 12),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          place.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          place.country,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildDestinations() {
    List<Widget> list = [];
    for (var destination in destinations) {
      list.add(buildDestination(destination));
    }
    return list;
  }

  Widget buildDestination(Destination destination) {
    return GestureDetector(
      onTap: () {
        // destinations
        print(">>>>>>>>>>>>>>>> ${destination.index}");
        switch (destination.index) {
          case 1:
            _showModalBottomSheet();
            break;
          case 2:
            _showModalBottomSheetFindHotel();
            break;
          case 3:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => StoresPage()));
            break;
          default:
        }
        // _showModalBottomSheet();
      },
      child: Card(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: 117,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    destination.iconUrl,
                    height: 35,
                    fit: BoxFit.fitHeight,
                    color: destination.iconColor,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    destination.country,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  List<Widget> buildFeatureds() {
    List<Widget> list = [];
    for (var featured in featureds) {
      list.add(buildFeatured(featured));
    }
    return list;
  }

  List<Widget> buildPromos() {
    List<Widget> list = [];
    for (var promo in promos) {
      list.add(buildFeatured(promo));
    }
    return list;
  }

  Widget buildFeatured(Featured featured) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  // colorFilter: new ColorFilter.mode(
                  //     Colors.black.withOpacity(0.4), BlendMode.dstIn),
                  image: AssetImage(featured.imageUrl),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  featured.year,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  featured.title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
