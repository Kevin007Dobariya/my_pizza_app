import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/custom_image.dart';
import 'package:my_pizza/utils/screen_utils.dart';
import 'package:my_pizza/view/menu/widgets/pizza_detail_row_widget.dart';

class MenuOrderCard extends StatelessWidget {
  final int index;
  final VoidCallbackFunction? setSizeDropdownValue;
  final VoidCallbackFunction? setCrustDropdownValue;
  final String? sizeDetailTitle;
  final String? crustDetailTitle;
  final List? sizeDetailValueList;
  final List? crustList;
  final String? sizeDetailValue;
  final String? crustDropDownValue;

  const MenuOrderCard({
    Key? key,
    required this.index,
    this.setSizeDropdownValue,
    this.setCrustDropdownValue,
    this.sizeDetailTitle,
    this.sizeDetailValueList,
    this.crustList,
    this.sizeDetailValue,
    this.crustDropDownValue,
    this.crustDetailTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              CustomImage(
                radius: 3,
                height: 150,
                width: double.infinity,
                image:
                    'https://media-cdn.tripadvisor.com/media/photo-s/13/f5/32/3b/domino-s-pizza.jpg',
                placeholder: AppString.offerPlaceholderImg,
              ),
              Positioned(
                  bottom: 5,
                  left: 8,
                  child: Text(
                    'RS 0.0/-',
                    style: AppStyle.mediumRoboto(color: Colors.white, size: 18),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Classic Fresh Veggie',
                  style: AppStyle.boldRoboto(size: 16),
                ),
                Text(
                  'Mozzarella Cheese, Onion, Tomato,Red Bell Pepper And etc',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: AppStyle.regularRoboto(size: 12),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PizzaDetailRow(
                            onChanged: (value) {
                              setSizeDropdownValue!(value);
                            },
                            detailTitle: sizeDetailTitle ?? 'Size',
                            detailValue: sizeDetailValue,
                            detailValueList: sizeDetailValueList,
                          ),
                          PizzaDetailRow(
                            onChanged: (value) {
                              setCrustDropdownValue!(value);
                            },
                            detailTitle: crustDetailTitle ?? 'Crust',
                            detailValue: crustDropDownValue,
                            detailValueList: crustList,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: AppButton(
                        textSize: 12,
                        padding: EdgeInsets.all(1),
                        buttonTitle: AppString.add_to_cart,
                        buttonColor: Colors.green,
                        onPress: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
