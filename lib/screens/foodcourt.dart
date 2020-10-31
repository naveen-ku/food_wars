import 'package:flutter/material.dart';
import 'package:food_wars/widgets/BestFoodWidget.dart';
import 'package:food_wars/widgets/PopularFoodWidget.dart';
import 'package:food_wars/widgets/TopMenus.dart';
import 'package:food_wars/widgets/bottom_nav.dart';
// import 'package:food_wars/animation/ScaleRoute.dart';
// import 'package:food_wars/widgets/BestFoodWidget.dart';
// import 'package:food_wars/widgets/BottomNavBarWidget.dart';
// import 'package:food_wars/widgets/PopularFoodsWidget.dart';
// import 'package:food_wars/widgets/SearchWidget.dart';
// import 'package:food_wars/widgets/TopMenus.dart';
import 'package:food_wars/widgets/search_widget.dart';

class FoodCourt extends StatefulWidget {
  @override
  _FoodCourtState createState() => _FoodCourtState();
}

class _FoodCourtState extends State<FoodCourt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
                // Navigator.pushReplacement(context,'/');
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
