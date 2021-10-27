import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/constant.dart';
import 'package:xpindo/helper/data.dart';
import 'package:xpindo/screen/detailsplace/detailplace.dart';
import 'package:xpindo/screen/historypage/historypage.dart';
import 'package:xpindo/screen/home/components/dashboard.dart';
import 'package:xpindo/screen/inboxpage/inboxpage.dart';
import 'package:xpindo/screen/orderspage/orderspage.dart';
import 'package:xpindo/screen/profilepage/profilepage.dart';

class MyHomePage extends StatefulWidget {
  static String routeName = "/myhomepage";
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  List<NavigationItem> navigationItems = getNavigationItemList();
  late NavigationItem selectedItem;
  int _selectedIndex = 0;
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
      // _selectedIndex = 0;
    });
  }

  static List<Widget> _options = <Widget>[
    DashboardScreen(),
    InboxPage(),
    OrderPage(),
    HistoryPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){
              // Navigator.push(
              // context,
              // MaterialPageRoute(
              //     builder: (context) => AboutIndonesiaPage(place: place)));
            },
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(7.0),
                child: Image.asset("assets/qrcode.png", height: 10, width: 10),
              ),
            ),
          ),
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/logo.png",
                height: 26,
              ),
              Text(
                "Expose",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                " Indonesia",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              )
            ],
          ),
          actions: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ))
          ],
        ),
        body: _options.elementAt(_selectedIndex),
        bottomNavigationBar:
            Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: buildNavigationItems(),
            ),
          ),
        ])

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> buildNavigationItems() {
    List<Widget> list = [];
    for (var navigation in navigationItems) {
      list.add(buildNavigationItem(navigation));
    }
    return list;
  }

  Widget buildNavigationItem(NavigationItem item) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = item;
          _selectedIndex = selectedItem.idx;
        });
      },
      child: Container(
        width: 50,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 40,
                  height: 3,
                  color: selectedItem == item
                      ? kPrimaryColor
                      : Colors.transparent),
            ),
            Center(
              child: Icon(
                item.iconData,
                color: selectedItem == item ? kPrimaryColor : Colors.grey[400],
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
