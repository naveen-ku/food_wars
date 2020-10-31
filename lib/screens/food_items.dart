import "package:flutter/material.dart";
import 'package:food_wars/helper/dimensions.dart';

class FoodItemsList extends StatelessWidget {
  final String stallName;
  // final stallData = StallData.getData;
  final List<Map<String, dynamic>> stallitem = [
    {"name": "Burger", "price": 149.0, "image": "assets/images/food.png"},
    {"name": "Pizza", "price": 249.0, "image": "assets/images/food.png"},
    {"name": "Tikki", "price": 40.0, "image": "assets/images/food.png"},
    {"name": "Macroni", "price": 60.0, "image": "assets/images/food.png"},
    {"name": "Special", "price": 249.0, "image": "assets/images/food.png"},
  ];
  FoodItemsList(this.stallName);
  @override
  Widget build(BuildContext context) {
    var vpW = getViewportWidth(context);
    var vpH = getViewportHeight(context);
    return Scaffold(
      appBar: AppBar(title: Text('$stallName menu')),
      body: new ListView.builder(
        itemCount: stallitem.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            // child: Text(stallitem[index]['name'])
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40), // if you need this
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Container(
                color: Colors.white,
                width: 200,
                height: 200,
                child: Row(
                  children: [
                    Container(
                      width: vpW * 0.5,
                      child: Image.asset(stallitem[index]['image']),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: vpW * 0.125, top: vpH * 0.05),
                      child: Column(
                        children: [
                          Text(
                            stallitem[index]['name'],
                            style: TextStyle(
                                fontSize: 26.0,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: vpH * 0.025),
                            child: Text(
                              '₹ ${stallitem[index]['price'].toString()}',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: vpH * .04),
                            child: RaisedButton(
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 20.0),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
