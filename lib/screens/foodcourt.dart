import "package:flutter/material.dart";

import 'package:food_wars/screens/our_picks.dart';
import 'package:food_wars/widgets/bottom_nav.dart';
import 'package:food_wars/widgets/food_stalls.dart';
import 'package:food_wars/widgets/search_widget.dart';


class FoodCourtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SearchWidget(),
              PopularFoodsWidget(),
              // StallList(),
              // FoodStalls(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
