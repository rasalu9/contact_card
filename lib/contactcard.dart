import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Contact Card",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Center(
            child: Column(children: [
          Container(
            // height: 390,
            margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
            color: Colors.cyanAccent,
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 106, 100, 100),
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/image6.jpg")),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        _launchDial("+916284475711");
                      },
                      child: Icon(
                        Icons.call,
                      ),
                      style: ButtonStyle(
                          iconColor: WidgetStateProperty.all(Colors.green),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.black)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton(
                      onPressed: () {
                        _launchUrl("https://www.facebook.com/rasalu.marood");
                      },
                      child: Icon(Icons.facebook),
                      style: ButtonStyle(
                          side: WidgetStateProperty.all(
                              BorderSide(strokeAlign: 1)),
                          iconColor: WidgetStateProperty.all(Colors.blue),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.black)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.black)),
                        onPressed: () {
                          _launchUrl(
                              "https://www.linkedin.com/in/rasalu-ghamarood-a896122b8/");
                        },
                        child: CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                                "https://th.bing.com/th/id/R.14f8d0d8ea255a03471032d79087fdf0?rik=Jcph23UZL08iCA&riu=http%3a%2f%2f1000logos.net%2fwp-content%2fuploads%2f2017%2f03%2fColor-of-the-LinkedIn-Logo.jpg&ehk=hT5Ibkg%2fFPa%2f7TPm%2fs2TP8Fxdd7ySQQBuZmn88xh5j0%3d&risl=&pid=ImgRaw&r=0")),
                      ),
                    )),
                const Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 45, 0),
                        child: Text(
                          "Rasalu",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text(
                              "DAV University",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
                  color: Color.fromARGB(255, 106, 100, 100),
                  height: 10,
                ),
              ],
            ),
          )
        ])));
  }

  Future<void> _launchUrl(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchDial(String url) async {
    if (!await launchUrl(Uri.parse("tel:$url"))) {
      throw Exception('Could not launch $url');
    }
  }
}
