import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/utils/common_widgets/app_button.dart';
import 'package:my_pizza/utils/common_widgets/custom_image.dart';
import 'package:my_pizza/utils/screen_utils.dart';

class OfferWidget extends StatelessWidget {
  final  imageUrl;
  final VoidEmptyParameterCallbackFunction? onPress;
  const OfferWidget({
    Key? key,
    this.imageUrl,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        Positioned(
          top: 0, left: 0, right: 0, bottom: 0,
          child: CustomImage(
            radius: 3,
            width: double.infinity,
            image: imageUrl,
            placeholder: AppString.offerPlaceholderImg,
          ),
        ),
        Positioned(
            bottom: 5, right: 5,
            child:AppButton(buttonTitle: AppString.apply,
            onPress: (){},)
         )
      ],
    );
  }
}
