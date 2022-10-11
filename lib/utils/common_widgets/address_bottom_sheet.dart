import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/controller/address_bottom_sheet/address_controller.dart';


class AddressBottomSheetWidget extends StatelessWidget {
  const AddressBottomSheetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddressController>(
        init: AddressController(),
        builder: (_) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return BottomSheetBody();
                },
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: AppString.Walk_in,
                        style: AppStyle.boldRoboto(
                            size: 14, color: Colors.white),
                        /*children: <TextSpan>[
                    TextSpan(
                      text: _.mainLocation,
                      style: AppStyle.regularRoboto(color: Colors.white,size: 12)
                    )
                  ],*/
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
                Text(
                  _.mainLocation,
                  maxLines: 1,
                  style:
                  AppStyle.regularRoboto(color: Colors.white, size: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        });
  }
}

class BottomSheetBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddressController>(
        init: AddressController(),
        builder: (_) {
      return SingleChildScrollView(
        child: Container(
          padding: AppStyle.appAllPadding10,
          color: AppColors.themeColorRedLight,
          child: Center(
              child: Column(
                children: [
                  Text(
                    AppString.select_address,
                    style: AppStyle.boldRoboto(),
                  ),
                  SizedBox(height: 10,),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: _.mainLocationList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          _.selectedAddress(index);
                          Get.back();
                        },
                        child: Card(
                          color: Colors.white,
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              _.mainLocationList[index],
                            ),
                            isThreeLine: true,
                            subtitle: Text(
                              _.fullAddressList[index],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              )),
        ),
      );
    });
  }
}
