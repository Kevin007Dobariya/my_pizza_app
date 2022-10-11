import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/view/cart/cart_screen.dart';
import 'icon_text_column.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        height: appbarHeight.height,
        padding: EdgeInsets.all(5),
        child: IntrinsicHeight(
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                GestureDetector(
                  onTap: () {Get.toNamed(Routes.MenuScreen);},
                  child: Container(
                    color: Colors.transparent,
                    child: IconTextColumn(
                      icon: Icon(
                        Icons.local_pizza_outlined,
                        color: Colors.white,
                      ),
                      title: AppString.menu,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: 1,
                  margin: EdgeInsets.symmetric(vertical: 3),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.DealsAndOfferScreen);
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: IconTextColumn(
                      icon: Icon(
                        Icons.local_pizza_outlined,
                        color: Colors.white,
                      ),
                      title: AppString.deals_and_offers,
                    ),
                  ),
                ),
                Container(
                    color: Colors.white,
                    width: 1,
                    margin: EdgeInsets.symmetric(vertical: 3)),
                GestureDetector(
                  onTap: () {
                    print('got to cart called');
                    Get.to(CartScreen());},
                  child: Container(
                    color: Colors.transparent,
                    child: IconTextColumn(
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      title: AppString.cart,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
