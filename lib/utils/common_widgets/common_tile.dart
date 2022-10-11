import 'package:flutter/material.dart';
import 'package:my_pizza/constants/text_style.dart';

import '../screen_utils.dart';
class CommonTile extends StatelessWidget {
  final Icon? icon;
  final VoidEmptyParameterCallbackFunction? onPress;
  final String? title;
  const CommonTile({
    Key? key, this.icon, this.title, this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: ListTile(
        horizontalTitleGap: 2,
        leading: icon!,
        title: Text(
          title!,
          style: AppStyle.mediumRoboto(size: 15),
        ),
      ),
    );
  }
}
