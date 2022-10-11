import 'package:flutter/material.dart';
import 'package:my_pizza/constants/text_style.dart';

class IconTextColumn extends StatelessWidget {
  final Icon? icon;
  final String? title;

  const IconTextColumn({
    Key? key,
    this.icon,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon!,
        Text(
          title!,
          style: AppStyle.regularRoboto(size: 12, color: Colors.white),
        ),
      ],
    );
  }
}
