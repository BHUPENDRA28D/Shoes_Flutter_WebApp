import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/utils/colors.dart';
import 'package:flutter_website/utils/constants.dart';
import 'package:flutter_website/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DeskTopNavBar(),
    );
  }

  //++++++++++++++++++++++++++++++ Widget for Mobile+++++++++++++++++++++++//
  Widget MobileNavBar() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.menu), navLogo()],
        ));
  }

  //++++++++++++++++++++++++++++++ Widget for desktop+++++++++++++++++++++++//
  Widget DeskTopNavBar() {
    return Container(
      color: Color.fromRGBO(245, 245, 245, 1),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Featrues'),
              navButton('About Us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),

          //Creating a Button
          Container(
              height: 45,
              child: ElevatedButton(
                  style: borderedButtonStyle,
                  onPressed: () {},
                  child: Text("Request a Demo",
                      style: TextStyle(color: AppColors.primary))))
        ],
      ),
    );
  }

  //Creating navButton
  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }

// Creating navLogo
  Widget navLogo() {
    return Container(
      width: 110,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
    );
  }
}
