import "package:flutter/material.dart";
import 'package:food_wars/screens/foodcourt.dart';
import 'package:qrscan/qrscan.dart' as scanner;

import 'package:food_wars/helper/dimensions.dart';
import 'package:food_wars/screens/auth.dart';

class OptionsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OptionScreenState();
  }
}

class _OptionScreenState extends State<OptionsScreen> {
  String scanResult = '';
  //function that launches the scanner
  Future scanQRCode() async {
    String cameraScanResult = await scanner.scan();
    setState(() {
      scanResult = cameraScanResult;
    });
  }

  Widget _buildGetStartedButton(
      var vpH, BuildContext context, String buttontext) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        buttontext,
        style: TextStyle(color: Theme.of(context).accentColor, fontSize: 20.0),
      ),
      onPressed: () {
        scanQRCode();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return FoodCourtScreen();
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildMainHeading(BuildContext context, var vpH) {
      return Container(
        margin: EdgeInsets.only(top: vpH * 0.20),
        child: Center(
          child: Text(
            "Select an option",
            style: TextStyle(
                fontSize: 26.0,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    var vpW = getViewportWidth(context);
    var vpH = getViewportHeight(context);
    return Scaffold(
        body: Container(
      height: vpH * 1.0,
      child: Column(
        children: [
          // Text("Select the options"),
          _buildMainHeading(context, vpH),
          SizedBox(height: vpH * 0.3),
          _buildGetStartedButton(vpH, context, "Scan QR"),
          SizedBox(height: vpH * 0.05),

          _buildGetStartedButton(vpH, context, "Use GPS"),

          // Container(
          //   width: vpW,
          //   height: vpH * 0.6,
          //   child: Container(
          //     margin: EdgeInsets.only(bottom: 0.0),
          //     decoration: BoxDecoration(
          //         color: Colors.white,
          //         shape: BoxShape.rectangle,
          //         borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(40.0),
          //           topLeft: Radius.circular(40.0),
          //         ),
          //         boxShadow: [
          //           BoxShadow(
          //             offset: const Offset(0.0, -3.0),
          //             blurRadius: 5.0,
          //             spreadRadius: 2.0,
          //           ),
          //         ]),
          //   ),
          // ),
        ],
      ),
    ));
  }
}
