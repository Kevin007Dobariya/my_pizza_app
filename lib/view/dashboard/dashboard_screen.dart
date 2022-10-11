import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/dashboard/dashboard_controller.dart';
import 'package:my_pizza/utils/common_widgets/address_bottom_sheet.dart';
import 'package:my_pizza/utils/common_widgets/app_drawer.dart';
import 'package:my_pizza/utils/common_widgets/bottom_container.dart';

import 'widgets/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).padding.top;
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (_)
      {
       return Scaffold(
         backgroundColor: AppColors.themeColorRedLight,
         floatingActionButton: Padding(
            padding: AppStyle.appSymmetricPaddingH30,
            child: AppBottomBar(),
          ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          appBar: AppBar(
            title: AddressBottomSheetWidget(),
          ),
          drawer: AppDrawer(height: height),
          body: SingleChildScrollView(child: DashboardBody()),
        );
      },
    );
  }
}

