import 'dart:async';

import 'package:contact_card/contactcard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Practice()),
            (Route<dynamic> routes) => true));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
          height: 500, width: 600, image: AssetImage("assets/images/card.png")),
    );
  }
}
