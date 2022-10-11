import 'package:get/get.dart';
class CartController extends GetxController {

   int numberOfItem=1;
  int foodItemPrize=100;

  addFoodItem(){
    numberOfItem++;
  }
  removeFoodItem(){
    if(numberOfItem>1)
      {
        numberOfItem--;
      }

  }

int  get  foodItemPrizeTotal{
    return foodItemPrize*numberOfItem;
  }

}