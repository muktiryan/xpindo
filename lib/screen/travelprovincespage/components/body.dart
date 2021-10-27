import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        children: List.generate(
          choices.length,
          (index) {
            return Container(
              child: SelectCard(
                choice: choices[index],
                key: null,
              ),
            );
          },
        ),
      )),
    );
  }
}

class Choice {
  const Choice(
      {required this.title, required this.icon, required this.assetpath});
  final String title;
  final IconData icon;
  final String assetpath;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      title: 'Jakarta', icon: Icons.home, assetpath: "assets/jakarta.jpg"),
  const Choice(
      title: 'West Java', icon: Icons.contacts, assetpath: "assets/jabar.jpg"),
  const Choice(
      title: 'Center Java', icon: Icons.map, assetpath: "assets/jateng.jpg"),
  const Choice(
      title: 'East Java', icon: Icons.phone, assetpath: "assets/jatim.jpg"),
  const Choice(
      title: 'Bali', icon: Icons.camera_alt, assetpath: "assets/bali.jpg"),
  const Choice(
      title: 'Lombok', icon: Icons.settings, assetpath: "assets/lombok.jpg"),
  const Choice(
      title: 'Kupang', icon: Icons.photo_album, assetpath: "assets/kupang.jpg"),
  const Choice(title: 'Papua', icon: Icons.wifi, assetpath: "assets/papua.jpg"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Colors.black,
        child: Container(
          height: 5,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                  image: AssetImage(choice.assetpath),
                  fit: BoxFit.cover)),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(choice.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ));
  }
}
