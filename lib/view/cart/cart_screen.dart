import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/cart/cart_controller.dart';
import 'package:my_pizza/utils/common_widgets/common_appbar.dart';

import 'widgets/amount_row_widget.dart';
import 'widgets/odered_item_card.dart';
import 'widgets/order_bottom_sheet.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
        init: CartController(),
        builder: (_) {
          return Scaffold(
            backgroundColor: AppColors.themeColorRedLight,
            appBar: CommonAppBar(title: AppString.cart),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(8).copyWith(bottom: 0),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) =>
                          OrderedItemCard(
                          index: index,
                          foodItemPrizeTotal: _.foodItemPrizeTotal,
                          addFoodItem: _.addFoodItem()??(){},
                          numberOfItem: _.numberOfItem,
                          removeFoodItem: _.removeFoodItem()??(){}),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        maxLines: 2,
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            hintText: AppString.remark),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppString.apply_coupon,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Column(
                              children: [
                                AmountRowWidget(
                                  title: AppString.mobile_no,
                                  amount: 'Rs 398',
                                ),
                                AmountRowWidget(
                                  title: AppString.discount,
                                  amount: '0.00',
                                ),
                                AmountRowWidget(
                                  title: AppString.text_and_charges,
                                  amount: 'Rs 92',
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                AmountRowWidget(
                                  title: AppString.grand_total,
                                  amount: 'Rs 490',
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: AppStyle.appAllPadding10.copyWith(bottom: 0),
                      child: OrderBottomSheet(),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }


}
