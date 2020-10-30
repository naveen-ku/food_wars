import "package:flutter/material.dart";
import 'package:food_wars/helper/dimensions.dart';

class LandingScreen extends StatelessWidget {
  Widget _buildImage() {
    return Transform.rotate(
      angle: -50 * 3.14 / 180,
      child: Container(
        margin: EdgeInsets.only(bottom: 30.0),
        child: Image.asset('assets/images/food.png'),
        color: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var vpW = getViewportWidth(context);
    var vpH = getViewportHeight(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: vpH * 0.025,
              ),
              _buildImage(),
              SizedBox(height: vpH * 0.025),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    "WELCOME TO FOOD WARS",
                    style: TextStyle(
                        fontSize: vpH * 0.035,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0, bottom: 20.0),
                child: Text(
                  "Find your favourite food stall right away",
                  style: TextStyle(
                    fontSize: vpH * 0.023,
                  ),
                ),
              ),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: vpH * 0.035,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
