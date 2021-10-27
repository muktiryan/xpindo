import 'package:flutter/material.dart';
import 'package:xpindo/routs.dart';
import 'package:xpindo/screen/splash/splashscreenpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expose Indonesia',
      theme: ThemeData(
          fontFamily: "Arialroundedmtstd",
          accentColor: Colors.black,
          primaryColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: SplashScreenPage.routeName,
      routes: routes,
    );
  }
}
