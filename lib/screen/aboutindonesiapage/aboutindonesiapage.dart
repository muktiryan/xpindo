import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpindo/helper/data.dart';
import 'package:xpindo/screen/cultureindonesiapage/culturendonesiapage.dart';

class AboutIndonesiaPage extends StatefulWidget {
  static String routeName = "/aboutindonesiapage";
  final NewPlace place;

  const AboutIndonesiaPage({Key? key, required this.place}) : super(key: key);
  @override
  _AboutIndonesiaPageState createState() => _AboutIndonesiaPageState();
}

class _AboutIndonesiaPageState extends State<AboutIndonesiaPage> {
  bool isAbout = true;
  bool isGeographic = false;
  bool isCulture = false;
  bool isRegion = false;
  @override
  Widget build(BuildContext context) {
    String aboutindonesian =
        "Indonesia disebut juga dengan Republik Indonesia (RI) atau Negara Kesatuan Republik Indonesia (NKRI), adalah negara di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan benua Asia dan Australia, serta antara Samudra Pasifik dan Samudra Hindia. Indonesia adalah negara kepulauan terbesar di dunia yang terdiri dari 17.504 pulau.[16] Nama alternatif yang biasa dipakai adalah Nusantara.[17] Dengan populasi mencapai 270.203.917 jiwa pada tahun 2020,[18] Indonesia adalah negara berpenduduk terbesar keempat di dunia dan negara yang berpenduduk Muslim terbesar di dunia, dengan penganut lebih dari 230 juta jiwa.";
    String sejarahindonesia =
        "Sejarah Indonesia banyak dipengaruhi oleh bangsa lainnya. Kepulauan Indonesia menjadi wilayah perdagangan penting sejak abad ke-7, yaitu sejak berdirinya Kerajaan Sriwijaya, sebuah kemaharajaan Hindu-Buddha yang berpusat di Palembang. Kerajaan Sriwijaya ini menjalin hubungan agama dan perdagangan dengan Tiongkok dan India, juga dengan bangsa Arab. Kerajaan-kerajaan beragama Hindu dan/atau Buddha mulai tumbuh pada awal abad ke-4 hingga abad ke-13 Masehi, diikuti para pedagang dan ulama dari jazirah Arab yang membawa agama Islam sekitar abad ke-8 hingga abad ke-16, serta kedatangan bangsa Eropa pada akhir abad ke-15 yang saling bertempur untuk memonopoli perdagangan rempah-rempah Maluku semasa era penjelajahan samudra. Setelah berada di bawah penjajahan Belanda selama hampir 3 abad, Indonesia yang saat itu bernama Hindia Belanda menyatakan kemerdekaannya di akhir Perang Dunia II, tepatnya tanggal 17 Agustus 1945. Selanjutnya, Indonesia mendapat berbagai tantangan dan persoalan berat, mulai dari seringnya terjadi bencana alam, praktik korupsi yang masif, konflik sosial, gerakan separatisme, proses demokratisasi, dan periode pembangunan, perubahan dan perkembangan sosial-ekonomi-politik, serta modernisasi yang pesat.";
    String geographic =
        "Indonesia lies between latitudes 11°S and 6°N, and longitudes 95°E and 141°E. It is the world's largest archipelagic country, extending 5,120 kilometres (3,181 mi) from east to west and 1,760 kilometres (1,094 mi) from north to south.[118] The country's Coordinating Ministry for Maritime and Investments Affairs says Indonesia has 17,504 islands (with 16,056 registered at the UN)[119] scattered over both sides of the equator, around 6,000 of which are inhabited.[120] The largest are Sumatra, Java, Borneo (shared with Brunei and Malaysia), Sulawesi, and New Guinea (shared with Papua New Guinea).[121] Indonesia shares land borders with Malaysia on Borneo and Sebatik, Papua New Guinea on the island of New Guinea, and East Timor on the island of Timor, and maritime borders with Singapore, Malaysia, Vietnam, the Philippines, Palau, and Australia.";

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(children: [
              Image(
                image: AssetImage(widget.place.images[0]),
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
                                "${widget.place.title} ${widget.place.country}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                widget.place.description,
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
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FeatureTile(
                  mapIdx: 1,
                  label: "About",
                  icondata: Icon(
                    isAbout ? Icons.info_rounded : Icons.info_outline,
                    color: Color(0xff546C64),
                  ),
                  onMenuSelect: (int mnuIdx) {
                    setState(() {
                      isAbout = true;
                      isGeographic = false;
                      isCulture = false;
                      isRegion = false;
                    });
                  },
                ),
                FeatureTile(
                  mapIdx: 2,
                  label: "Geograpic",
                  icondata: Icon(
                    isGeographic ? Icons.map_rounded : Icons.map_outlined,
                    color: Color(0xff546C64),
                  ),
                  onMenuSelect: (int mnuIdx) {
                    setState(() {
                      isAbout = false;
                      isGeographic = true;
                      isCulture = false;
                      isRegion = false;
                    });
                  },
                ),
                FeatureTile(
                  mapIdx: 3,
                  label: "Culture",
                  icondata: Icon(
                    isCulture
                        ? Icons.account_tree_rounded
                        : Icons.account_tree_outlined,
                    color: Color(0xff546C64),
                  ),
                  onMenuSelect: (int mnuIdx) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CultureIndonesiaPage()));
                  },
                ),
                FeatureTile(
                  mapIdx: 4,
                  label: "Region",
                  icondata: Icon(
                    isRegion
                        ? Icons.account_balance_rounded
                        : Icons.account_balance_outlined,
                    color: Color(0xff546C64),
                  ),
                  onMenuSelect: (int mnuIdx) {
                    setState(() {
                      isAbout = false;
                      isGeographic = false;
                      isCulture = false;
                      isRegion = true;
                    });
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
                        isAbout ? aboutindonesian : geographic,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff546C64)),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: isAbout
                              ? AssetImage("assets/images/petaindo.png")
                              : AssetImage("assets/images/geographic.png"),
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        isAbout ? sejarahindonesia : "",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff546C64)),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
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
