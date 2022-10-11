import 'package:flutter/material.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'custom_image.dart';

class ImageWithText extends StatelessWidget {
  final Icon? icon;
  final imageUrl;
  final String? title;
  final String? placeHolder;
  final Widget? widgetUP;
  final Widget? widgetDown;

  const ImageWithText(
      {Key? key,
      this.icon,
      this.title,
      this.imageUrl,
      this.placeHolder, this.widgetUP, this.widgetDown})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: widgetUP??CustomImage(
                  image: imageUrl, placeholder: placeHolder!,radius: 0,
                ),
            ),
          ),
          Expanded(
             flex: 3,
             child: widgetDown??Text(
               title!, style: AppStyle.LowMediumRoboto(size: 14,),
            ),
          ),
        ],
      ),
    );
  }
}
