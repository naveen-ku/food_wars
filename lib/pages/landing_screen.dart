import "package:flutter/material.dart";
import 'package:food_wars/pages/auth.dart';

class LandingScreen extends StatelessWidget {
  Widget _buildImage() {
    return Container(
        // alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: 30.0),
        child: Image.asset('assets/food.png'),
        color: Colors.transparent);
  }

  Widget _buildMainHeading(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          "WELCOME TO FOOD WARS",
          style: TextStyle(
              fontSize: 26.0,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildSubHeading(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, bottom: 20.0),
      child: Text(
        "Find your favourite food stall right away",
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: deviceHight * .25),
            _buildImage(),
            SizedBox(height: 20.0),
            _buildMainHeading(context),
            _buildSubHeading(context),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                "Get Started",
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return AuthPage();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
