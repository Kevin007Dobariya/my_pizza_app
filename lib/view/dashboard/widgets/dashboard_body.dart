import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/dashboard/dashboard_controller.dart';
import 'package:my_pizza/utils/common_widgets/custom_image.dart';
import 'package:my_pizza/utils/common_widgets/common_slider.dart';
import 'package:my_pizza/view/dashboard/widgets/container_card.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (_) {
          return Container(
            margin: EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonSlider(sliderItemList: _.headerSliderList,),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    AppString.exploreMenu,
                    style: AppStyle.mediumRoboto(size: 16),
                  ),
                ),
                Padding(
                  padding: AppStyle.appSymmetricPaddingH10,
                  child: Row(
                    children: [
                      ContainerCard(
                        title: AppString.pizzaDemo1,
                        imageUrl: AppString.pizzaDemo1,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ContainerCard(
                        title: AppString.pizzaDemo1,
                        imageUrl: AppString.pizzaDemo2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: AppStyle.appSymmetricPaddingH10,
                  child: Row(
                    children: [
                      ContainerCard(
                        title: AppString.pizzaDemo1,
                        imageUrl: AppString.pizzaDemo3,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ContainerCard(
                        title: AppString.pizzaDemo1,
                        imageUrl: AppString.pizzaDemo4,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      ContainerCard(
                        title: AppString.pizzaDemo1,
                        imageUrl: AppString.pizzaDemo5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: AppStyle.appAllPadding10,
                  child: CustomImage(
                    radius: 5,
                    width: double.infinity,
                    placeholder: AppString.offerPlaceholderImg,
                    image: AppString.pizzaOfferDemo,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    AppString.offers,
                    style: AppStyle.mediumRoboto(size: 16),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 80),
                  child: CommonSlider(sliderItemList: _.headerSliderList,),
                ),
              ],
            ),
          );
        });
  }
}
