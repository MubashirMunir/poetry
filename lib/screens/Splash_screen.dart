import 'dart:async';

import 'package:flutter/material.dart';
import 'package:poetry/screens/home_screen.dart';

class ss extends StatefulWidget {
  const ss({Key? key}) : super(key: key);
  State<ss> createState() => ssState();
}

class ssState extends State<ss> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => hs())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: CircleAvatar(
                  maxRadius: 110,
                  backgroundImage: AssetImage("assets/images/pic.jpg"))),
          SizedBox.fromSize(size: const Size.square(110)),
          const Text(
            "Muzaffar Mehmood",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          )
        ],
      ),
    );
  }
}
