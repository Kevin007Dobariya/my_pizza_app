import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/utils/common_widgets/address_bottom_sheet.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';

class OrderBottomSheet extends StatelessWidget {
  const OrderBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyle.appAllPadding20,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AddressBottomSheetWidget(),
          SizedBox(height: 5,),
          AppButton(
            buttonTitle: AppString.place_order,
            buttonColor: Colors.white,
            onPress: () {},
            buttonTextColor: Colors.brown,
          )
        ],
      ),
    );
  }
}
