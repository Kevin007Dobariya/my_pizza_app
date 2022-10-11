import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/controller/menu/menu_controller.dart';
import 'categories/veg_pizza_screen.dart';

class MenuScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuController>(
        init: MenuController(),
        builder: (_) {
      return DefaultTabController(
        length: _.menuCategoryList.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(AppString.exploreMenu),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                ..._.menuCategoryList.map((e) => Tab(text: e,),)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              VegPizzaCategory(),
              VegPizzaCategory(),
              VegPizzaCategory(),
              VegPizzaCategory(),
              VegPizzaCategory(),
              VegPizzaCategory(),
              VegPizzaCategory(),
              VegPizzaCategory(),
              // FirstScreen(),
              // SecondScreen(),
            ],
          ),
        ),
      );
    });
  }
}
