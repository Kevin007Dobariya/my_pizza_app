import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/utils/common_widgets/custom_image.dart';
import 'package:my_pizza/utils/screen_utils.dart';

class OrderedItemCard extends StatelessWidget {
    final int? index;
     final int numberOfItem;
     final int foodItemPrizeTotal;
     final Function addFoodItem;
     final Function removeFoodItem;
   OrderedItemCard({
    Key? key, this.index, required this.numberOfItem, required this.foodItemPrizeTotal, required this.addFoodItem, required this.removeFoodItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: CustomImage(
                radius: 3,
                height: 100,
                width: double.infinity,
                placeholder: AppString.offerPlaceholderImg,
                image: AppString.pizzaDemo5,
              ),
            ),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Garlic Bread Cheese',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: AppStyle.boldRoboto(size: 18)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Woklee Pizza',
                            style:
                            TextStyle(fontSize: 12.0, color: Colors.grey)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rs.${foodItemPrizeTotal.toString()}/-',
                            style: AppStyle.regularRoboto(
                                size: 13.0, color: Colors.black)),
                        Container(
                          height: 30,
                          width: Screen.screenWidth ?? 300 / 3,
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  removeFoodItem();
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                numberOfItem.toString(),
                                style: AppStyle.regularRoboto(
                                    size: 15.0, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              GestureDetector(
                                onTap: () {
                                  addFoodItem();
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
