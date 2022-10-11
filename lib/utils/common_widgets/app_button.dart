import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/text_style.dart';

import '../screen_utils.dart';

class AppButton extends StatelessWidget {
  final  String? buttonTitle;
  final  double? textSize;
  final  Color? buttonColor;
  final  Color? buttonTextColor;
  final  EdgeInsets? padding;
  final  VoidEmptyParameterCallbackFunction? onPress;
  const AppButton({
    Key? key, this.buttonTitle, this.buttonColor, this.onPress, this.padding, this.textSize, this.buttonTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor:buttonColor?? AppColors.themeColorRed),
      onPressed:onPress,
      child: Padding(
        padding: padding ?? EdgeInsets.all(8.0),
        child: Text(buttonTitle!,
          style: AppStyle.regularRoboto(color: buttonTextColor??Colors.white,size:textSize??16),
        ),
      ),
    );
  }
}
