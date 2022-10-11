import 'package:flutter/material.dart';
import 'package:my_pizza/constants/text_style.dart';

class AmountRowWidget extends StatelessWidget {
  final String? title;
  final String? amount;
  const AmountRowWidget({
    Key? key, this.title, this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.appSymmetricPaddingV10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title??'Amount'),
          Text(amount!),
        ],
      ),
    );
  }
}