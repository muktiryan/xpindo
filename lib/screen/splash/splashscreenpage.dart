import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xpindo/screen/home/myhomepage.dart';
import 'package:xpindo/services/ServiceAuthentication.dart';

class SplashScreenPage extends StatefulWidget {
  static String routeName = "/splashscreenpage";
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  bool isLoading = true;

  @override
  void initState() {
    print(">>>>>>>>>>>>>> Initial SplashScreenPage");
    Future.delayed(const Duration(milliseconds: 2000), () {
      getPreferences().then(routingToWhere);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/splash.png"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          isLoading
              ? Center(
                  child: Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: CircularProgressIndicator(
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation(Colors.red[700]),
                        strokeWidth: 5),
                  ),
                ))
              : Text("Loaded!")
        ],
      ),
    );
  }

  Future<String> getPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.clear();
    String token =
        (prefs.containsKey("token") ? prefs.getString("token") : "null")!;
    // if (prefs.containsKey("token")) {
    //   token = prefs.getString("token")!;
    // }
    // String token = prefs.getString("token")!;
    print("Splash get preverence : $token");
    return token;
  }

  Future<bool> saveCredentialPreference(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
    return prefs.commit();
  }

  Future<bool> clearPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }

  void routingToWhere(String token) {
    if (token == "null") {
      clearPref().then((value) {
        ServiceAuthentication.getTokenTest().then((value) {
          if (value == null) {
          } else {
            String _prference = value;
            if (_prference.startsWith('DioError')) {
              _showToast(context, "Problem with Internet Connection");
            } else {
              // print(" value from login preference : ${_prference.toString()}");
              saveCredentialPreference(_prference.toString()).then(
                  (bool committed) => Navigator.pushReplacementNamed(
                      context, MyHomePage.routeName));
            }
          }
        });
      });
    } else {
      Navigator.pushReplacementNamed(context, MyHomePage.routeName);
    }
  }

  void _showToast(BuildContext context, String Message) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(Message),
        action: SnackBarAction(
            label: 'Close', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
