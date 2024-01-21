import 'package:flutter/material.dart';
import 'package:flutter_website/container/container1.dart';
import 'package:flutter_website/container/container2.dart';
import 'package:flutter_website/container/container3.dart';
import 'package:flutter_website/container/container4.dart';
import 'package:flutter_website/container/container5.dart';
import 'package:flutter_website/utils/constants.dart';

import 'package:flutter_website/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    w = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      child: Column(
        children: [
          NavBar(),
          Container1(),
          Container2(),
          Container3(),
          Container4(),
          Container5(),
          // FooterPage(),
        ],
      ),
    )));
  }
}
