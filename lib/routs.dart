import 'package:flutter/material.dart';
import 'package:xpindo/screen/aboutindonesiapage/aboutindonesiapage.dart';
import 'package:xpindo/screen/culinarytraditionaldetailpage/culinarytraditionaldetailpage.dart';
import 'package:xpindo/screen/culinarytraditionalpage/culinarytraditionalpage.dart';
import 'package:xpindo/screen/cultureindonesiapage/culturendonesiapage.dart';
import 'package:xpindo/screen/detailsplace/detailplace.dart';
import 'package:xpindo/screen/home/myhomepage.dart';
import 'package:xpindo/screen/inboxpage/inboxpage.dart';
import 'package:xpindo/screen/orderspage/orderspage.dart';
import 'package:xpindo/screen/profilepage/profilepage.dart';
import 'package:xpindo/screen/splash/splashscreenpage.dart';
import 'package:xpindo/screen/travelprovincespage/travelprovincespage.dart';

//All of our route will be here
final Map<String, WidgetBuilder> routes = {
  SplashScreenPage.routeName: (context) => SplashScreenPage(),
  MyHomePage.routeName: (context) => MyHomePage(title: "Expose Indonesia"),
  DetailPlacePage.routeName: (context) => DetailPlacePage(
        place: null!,
      ),
  AboutIndonesiaPage.routeName: (context) => AboutIndonesiaPage(
        place: null!,
      ),
  CultureIndonesiaPage.routeName: (context) => CultureIndonesiaPage(),
  TravelProvincesPage.routeName: (context) => TravelProvincesPage(),
  CulinaryTraditionalPage.routeName: (context) => CulinaryTraditionalPage(),
  CulinaryTraditioanlDetailPage.routeName: (context) =>
      CulinaryTraditioanlDetailPage(itemThumbnail: null!),
  InboxPage.routeName: (context) => InboxPage(),
  OrderPage.routeName: (context) => OrderPage(),
  ProfilePage.routeName: (context) => ProfilePage(),
};
