import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/menu/categories/veg_pizza_controller.dart';
import 'package:my_pizza/view/menu/widgets/menu_order_card.dart';

class VegPizzaCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VegPizzaCatController>(
       init: VegPizzaCatController(),
        builder: (_) {
      return Scaffold(
        backgroundColor: AppColors.themeColorRedLight,
        body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) =>
              Padding(
                padding: AppStyle.appAllPadding5,
                child: MenuOrderCard(
                  index: index,
                  crustDropDownValue: _.crustDropDownValue,
                  crustList: _.crustList,
                  sizeDetailTitle:  AppString.size,
                  crustDetailTitle: AppString.crust,
                  sizeDetailValueList: _.sizeList,
                  sizeDetailValue:_.sizeDropDownValue,
                  setCrustDropdownValue:(value){_.setCrustDropdownValue(value);},
                  setSizeDropdownValue:(value){_.setSizeDropdownValue(value);},
                ),
              ),
        ),
      );
    });
  }
}
