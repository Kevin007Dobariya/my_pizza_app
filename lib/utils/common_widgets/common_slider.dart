import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/utils/common_widgets/custom_image.dart';

class CommonSlider extends StatelessWidget {
  final List? sliderItemList;
  final double? aspectRatio;

  const CommonSlider({
    Key? key,
    this.sliderItemList,
    this.aspectRatio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        // scrollPhysics: NeverScrollableScrollPhysics(),
        aspectRatio: aspectRatio ?? 16 / 7,
      ),
      items: sliderItemList!.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(

              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomImage(
                height: 300,
                radius: 3,
                image: i,
                placeholder: AppString.headerOfferPlaceholderImg,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
