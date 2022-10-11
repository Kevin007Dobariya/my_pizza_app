import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/routes/name_routes.dart';
import 'package:my_pizza/utils/sahredpreference/app_prefrence.dart';
import 'address_bottom_sheet.dart';
import 'common_tile.dart';
import 'package:url_launcher/url_launcher.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height,
            ),
            Container(
              width: double.infinity,
              height: appbarHeight.height,
              color: AppColors.themeColorRed,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.toNamed(Routes.SignInScreen),
                      child: Container(
                        color: Colors.transparent,
                        child: Text(AppString.sign_in,
                            style: AppStyle.regularRoboto(
                                color: Colors.white, size: 15)),
                      ),
                    ),
                      GestureDetector(
                      onTap: () => Get.toNamed(Routes.SignUpScreen),
                      child: Container(
                        color: Colors.transparent,
                        child: Text(AppString.sign_up,
                            style:
                                AppStyle.regularRoboto(color: Colors.white, size: 15)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CommonTile(
              onPress: () => Get.toNamed(Routes.MenuScreen),
              icon: Icon(
                Icons.local_pizza_outlined,
                color: Colors.black,
              ),
              title: AppString.menu,
            ),
            CommonTile(
              onPress:  () => Get.toNamed(Routes.DealsAndOfferScreen),
              icon: Icon(Icons.local_pizza_outlined, color: Colors.black),
              title: AppString.deals_n_offer,
            ),
            Visibility(
              visible: AppPreference.getBool(AppString.logged)?false:true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: AppStyle.appAllPadding15,
                    child: Text(
                      AppString.personal,
                      style: AppStyle.mediumRoboto(color: Colors.grey, size: 15),
                    ),
                  ),
                  CommonTile(
                    onPress: (){
                      Get.back();
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return BottomSheetBody();
                        },
                      );},
                    icon: Icon(Icons.storefront, color: Colors.black),
                    title: AppString.store_locator,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: AppPreference.getBool(AppString.logged)?true:false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: AppStyle.appAllPadding15,
                    child: Text(
                      AppString.order_history,
                      style: AppStyle.mediumRoboto(color: Colors.grey, size: 15),
                    ),
                  ),
                  CommonTile(
                    onPress:  () => Get.toNamed(Routes.OrderHistoryScreen),
                    icon: Icon(Icons.history_edu, color: Colors.black),
                    title: AppString.order_history,
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: AppStyle.appAllPadding15,
                    child: Text(
                      AppString.personal,
                      style: AppStyle.mediumRoboto(color: Colors.grey, size: 15),
                    ),
                  ),
                  CommonTile(
                    onPress:  () => Get.toNamed(Routes.ProfileScreen),
                    icon: Icon(Icons.person_pin_circle_outlined, color: Colors.black),
                    title: AppString.profile,
                  ),
                  CommonTile(
                    onPress: () => Get.toNamed(Routes.WalletScreen),
                    icon: Icon(Icons.account_balance_wallet_outlined, color: Colors.black),
                    title: AppString.wallet,
                  ),CommonTile(
                    onPress: (){
                      Get.back();
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return BottomSheetBody();
                        },
                      );},
                    icon: Icon(Icons.storefront, color: Colors.black),
                    title: AppString.store_locator,
                  ),CommonTile(
                    onPress: (){
                      Get.back();
                      Get.defaultDialog(
                        backgroundColor: AppColors.themeColorRedLight,
                        barrierDismissible: false,
                        title:AppString.alert,
                        textConfirm: AppString.yes,
                        textCancel: AppString.no,
                        cancelTextColor: AppColors.themeColorRed,
                        confirmTextColor: Colors.white,
                        buttonColor: AppColors.themeColorRed,
                        onCancel: (){Get.back();},
                        onConfirm: (){AppPreference.clear();
                        Get.back();},
                        radius: 7,
                          content: Column(
                            children: [
                              Container(child:Text(AppString.logout_alert)),
                            ],
                      ));
                      },
                    icon: Icon(Icons.logout_outlined, color: Colors.black),
                    title: AppString.log_out,
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: AppStyle.appAllPadding15,
              child: Text(
                AppString.contact_detail,
                style: AppStyle.mediumRoboto(color: Colors.grey, size: 15),
              ),
            ),
            CommonTile(
              icon: Icon(Icons.phone_in_talk_outlined, color: Colors.black),
              title: AppString.contact_us,
            ),
            CommonTile(
              onPress: _launchPrivacyURL,
              icon: Icon(Icons.content_copy, color: Colors.black),
              title: AppString.privacy_policy,
            ),
            CommonTile(
              onPress: _launchTermsURL,
              icon: Icon(Icons.policy_outlined, color: Colors.black),
              title: AppString.terms_n_condition,
            ),
          ],
        ),
      ),
    );
  }
  void _launchTermsURL() async =>
      await canLaunchUrl(Uri.parse(AppString.privacy_policy_url)) ? await canLaunchUrl(Uri.parse(AppString.privacy_policy_url)) : throw 'Could not launch ${AppString.privacy_policy_url}';
  void _launchPrivacyURL() async =>
      await canLaunchUrl(Uri.parse(AppString.terms_and_condition_url)) ? await canLaunchUrl(Uri.parse(AppString.terms_and_condition_url)) : throw 'Could not launch ${AppString.terms_and_condition_url}';
}
