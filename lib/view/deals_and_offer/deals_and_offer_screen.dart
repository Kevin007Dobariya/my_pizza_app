import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/offer_controller/offer_controller.dart';
import 'package:my_pizza/utils/common_widgets/common_appbar.dart';
import 'widgets/offer_widget.dart';

class DealsAndOfferScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfferController>(
        init: OfferController(),
        builder: (_) {
      return Scaffold(
        backgroundColor: AppColors.themeColorRedLight,
        appBar: CommonAppBar(title: AppString.deals_and_offers),
        body: Container(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _.headerSliderList.length,
            itemBuilder: (context, index) {
            return Padding(
              padding: AppStyle.appAllPadding10,
              child: Container(
                height: 200,
                  child: OfferWidget(imageUrl: _.headerSliderList[index])),
            );
          },),
        ),
      );
    });
  }
}
