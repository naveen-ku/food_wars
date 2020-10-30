import "package:flutter/material.dart";
import 'package:food_wars/screens/food_items.dart';
import 'package:food_wars/widgets/bottom_nav.dart';
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
              // FoodItemsList("PizzaHut"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
