import 'package:flutter/material.dart';

class NavigationItem {
  IconData iconData;
  int idx = 0;
  NavigationItem(this.iconData, this.idx);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem(Icons.home_rounded, 0),
    NavigationItem(Icons.mail_rounded, 1),
    NavigationItem(Icons.fact_check_rounded, 2),
    NavigationItem(Icons.history_rounded, 3),
    NavigationItem(Icons.person, 4),
  ];
}

class NewPlace {
  String description;
  String country;
  String title;
  int typedetail;
  List<String> images;
  bool favorite;

  NewPlace(this.description, this.country, this.title, this.typedetail,
      this.images, this.favorite);
}

List<NewPlace> getNewPlaceList() {
  return <NewPlace>[
    NewPlace("All spotlight about Indonesia", "Indonesia", "About", 1,
        ["assets/images/aboutindonesia.jpg"], false),
    NewPlace("Go to Provinces List", "Provinces", "Travel Around", 2,
        ["assets/images/travelprovince.jpg"], false),
    NewPlace("Go to Provinces List", "Culinary", "Traditional", 3,
        ["assets/images/culinarytradisional.jpg"], false)
  ];
}

class Place {
  String description;
  String country;
  double price;
  List<String> images;
  bool favorite;

  Place(this.description, this.country, this.price, this.images, this.favorite);
}

List<Place> getPlaceList() {
  return <Place>[
    Place(
        "Beautiful city view from top of the town",
        "Norway",
        3580.9,
        [
          "assets/images/top_of_the_town_0.jpg",
          "assets/images/top_of_the_town_1.jpg",
          "assets/images/top_of_the_town_2.jpg",
          "assets/images/top_of_the_town_3.jpg",
        ],
        false),
    Place(
        "The second largest city in Brazil, famous for its breathtaking landscape",
        "Brazil",
        2990,
        [
          "assets/images/rio_0.jpg",
          "assets/images/rio_1.jpg",
          "assets/images/rio_2.jpg",
          "assets/images/rio_3.jpg",
        ],
        false),
    Place(
        "This city has been described as the cultural, financial, and media capital of the world",
        "USA",
        4870.5,
        [
          "assets/images/new_york_0.jpg",
          "assets/images/new_york_1.jpg",
          "assets/images/new_york_2.jpg",
          "assets/images/new_york_3.jpg",
        ],
        false),
    Place(
        "This city is built around a huge harbour and hosts many tourist attractions",
        "Australia",
        4120.5,
        [
          "assets/images/sidney_0.jpg",
          "assets/images/sidney_1.jpg",
        ],
        false),
    Place(
        "One of the largest Buddhist temples",
        "Hong Kong",
        3990,
        [
          "assets/images/temple_0.jpg",
          "assets/images/temple_1.jpg",
          "assets/images/temple_2.jpg",
        ],
        false),
    Place(
        "These red cabins are beautiful",
        "Norway",
        4055,
        [
          "assets/images/cabins_0.jpg",
          "assets/images/cabins_1.jpg",
          "assets/images/cabins_2.jpg",
          "assets/images/cabins_3.jpg",
        ],
        false),
  ];
}

class Destination {
  int index;
  String city;
  String country;
  String iconUrl;
  Color iconColor;

  Destination(
      this.index, this.city, this.country, this.iconUrl, this.iconColor);
}

List<Destination> getDestinationList() {
  return <Destination>[
    Destination(
      1,
      "Sewa mobil dan supir",
      "Transport",
      "assets/icons/carrental.png",
      Color(0xFF18A2EF),
    ),
    // Destination(
    //   "Mass Transport Choose",
    //   "Public Trans",
    //   "assets/icons/holder.png",
    //   Color(0xFFFF5A5F),
    // ),
    Destination(
      2,
      "Penginapan",
      "Find Hotels",
      "assets/icons/hotel.png",
      Color(0xFF2FC069),
    ),
    Destination(
      3,
      "Commerce",
      "Stores",
      "assets/icons/shopping-mall.png",
      Color(0xFFFF8412),
    ),
  ];
}

class Featured {
  String year;
  String title;
  String imageUrl;

  Featured(this.year, this.title, this.imageUrl);
}

List<Featured> getFeaturedList() {
  return <Featured>[
    Featured(
      "Taman Impian Jaya Ancol",
      "Promo disc 30%",
      "assets/images/placesnear/ancol.jpg",
    ),
    Featured(
      "Taman Mini Indonesia Indah",
      "Promo buy 1 ticket get 1",
      "assets/images/placesnear/tmii.jpeg",
    ),
    Featured(
      "Bidadari Island",
      "Best leasure island",
      "assets/images/placesnear/pulaubidadari.jpg",
    ),
  ];
}

List<Featured> getPromoList() {
  return <Featured>[
    Featured(
      "Discount 30%",
      "Get Traditional food voucher",
      "assets/images/promos/blue.jpg",
    ),
    Featured(
      "Buy 1 get 2 item",
      "Kerak telor on action",
      "assets/images/promos/brown.png",
    ),
    Featured(
      "1 Day free",
      "Bidadar island Promo",
      "assets/images/promos/bluedua.jpg",
    ),
  ];
}

class MediaThumbnail {
  int codemedia;
  String title;
  String province;
  String city;
  String description;
  String thumbpath;
  MediaThumbnail(this.codemedia, this.title, this.province, this.city,
      this.description, this.thumbpath);
}

List<MediaThumbnail> getShowThumbList() {
  return <MediaThumbnail>[
    MediaThumbnail(
        2221,
        "Wayang Kulit",
        "Center Java",
        "Yogyakarta",
        "This is real culture from Middle Java Province ",
        "assets/wayangkulit.jpg"),
    MediaThumbnail(
        2222,
        "Wayang Golek",
        "West Java",
        "Bandung",
        "This is real culture from West Java Province ",
        "assets/wayanggolek.jpg"),
    MediaThumbnail(2223, "Lenong Betawi", "DKI Jakarta", "Jakarta",
        "This is real culture from Jakarta Province ", "assets/lenong.jpg"),
  ];
}

List<MediaThumbnail> getChlotThumbList() {
  return <MediaThumbnail>[
    MediaThumbnail(112, "Kebaya", "Center Java", "Yogyakarta",
        "Traditional cloth from Middle Java Province ", "assets/kebaya.jpg"),
    MediaThumbnail(
        113,
        "Gadang Cloths",
        "West Sumatra",
        "Padang",
        "Traditional cloth from West Sumatra Province ",
        "assets/bajupadang.jpg"),
    MediaThumbnail(114, "Balinese Kebaya", "Bali", "Denpasar",
        "Traditional cloth from Bali Province ", "assets/kebayabali.jpg"),
  ];
}

List<MediaThumbnail> getCulinaryThumbList() {
  return <MediaThumbnail>[
    MediaThumbnail(
        501,
        "Sate",
        "DKI Jakarta",
        "Jakarta",
        "Traditional food known as the most deliciouse traditional food in Indonesia ",
        "assets/sate.jpg"),
    MediaThumbnail(502, "Gado-gado", "DKI Jakarta", "Jakarta",
        "Traditional food good for vegetarian ", "assets/gadogado.jpg"),
    MediaThumbnail(503, "Gudeg", "Center Java", "Yogyakarta",
        "Traditional food contain lot of protein. ", "assets/gudeg.jpg"),
  ];
}
