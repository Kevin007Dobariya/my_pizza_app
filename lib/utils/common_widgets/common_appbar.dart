import 'package:flutter/material.dart';
import 'package:my_pizza/constants/text_style.dart';


AppBar CommonAppBar({
  required final String title,
  final Function? onActionTap,
  final bool? showBack,
  final bool showAction = false,
  final Widget? action,
  final String? actionName,
  final onTap,
  final icon,
  final image,
}) {
  return AppBar(

    leading: icon,
    title: image ??
        Text(
          title,
          style: AppStyle.regularRoboto(color: Colors.white,size: 18),
        ),
    actions: [
      Center(
          child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child:action
      ))
    ],
    titleTextStyle: TextStyle(fontSize: 18),
    centerTitle: false,
  );
}
