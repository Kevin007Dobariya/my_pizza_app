import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/utils/common_widgets/image_with_text.dart';

class ContainerCard extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  const
  ContainerCard({
    Key? key, this.imageUrl, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: MediaQuery.of(context).size.height/6,
          decoration: AppStyle.imageTextContainerDecoration,
          child: ImageWithText(
            imageUrl:imageUrl,
            placeHolder: AppString.placeholderImg,
            title: AppString.veg_pizza,
          )),
    );
  }
}
