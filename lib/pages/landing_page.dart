import "package:flutter/material.dart";

class LandingPage extends StatelessWidget {
  Widget _buildImage() {
    return Transform.rotate(
      angle: -50 * 3.14 / 180,
      child: Container(
          margin: EdgeInsets.only(bottom: 30.0),
          child: Image.asset('assets/food.png'),
          color: Colors.transparent),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            _buildImage(),
            SizedBox(height: 20.0),
            Container(
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
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, bottom: 20.0),
              child: Text(
                "Find your favourite food stall right away",
                style: TextStyle(
                  fontSize: 16.0,
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
                    color: Theme.of(context).accentColor, fontSize: 20.0),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
