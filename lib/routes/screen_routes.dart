import 'package:my_pizza/view/add_password/add_password_screen.dart';
import 'package:my_pizza/view/change_password/change_password_screen.dart';
import 'package:my_pizza/view/deals_and_offer/deals_and_offer_screen.dart';
import 'package:my_pizza/view/forgot_password/forgot_password_screen.dart';
import 'package:my_pizza/view/invitation/invitationScreen.dart';
import 'package:my_pizza/view/menu/menu_screen.dart';
import 'package:my_pizza/view/order_history/order_history_screen.dart';
import 'package:my_pizza/view/otp/otp_screen.dart';
import 'package:my_pizza/view/profile/profile_screen.dart';
import 'package:my_pizza/view/sign_in/sign_in_screen.dart';
import 'package:my_pizza/view/sign_up/sign_up_screen.dart';
import 'package:my_pizza/view/wallet/wallet_screen.dart';
import 'name_routes.dart';
import 'package:get/get.dart';
import 'package:my_pizza/view/dashboard/dashboard_screen.dart';

class ScreenRoutes {
  static final screens = [
     GetPage(name: Routes.DashboardScreen, page:()=>const DashboardScreen()),
     GetPage(name: Routes.DealsAndOfferScreen, page:()=> DealsAndOfferScreen()),
     GetPage(name: Routes.MenuScreen, page:()=> MenuScreen()),
     GetPage(name: Routes.SignInScreen, page:()=> SignInScreen()),
     GetPage(name: Routes.SignUpScreen, page:()=> SignUpScreen()),
     GetPage(name: Routes.ProfileScreen, page:()=> ProfileScreen()),
     GetPage(name: Routes.OrderHistoryScreen, page:()=> OrderHistoryScreen()),
     GetPage(name: Routes.WalletScreen, page:()=> WalletScreen()),
     GetPage(name: Routes.AddPasswordScreen, page:()=> AddPasswordScreen()),
     GetPage(name: Routes.InvitationScreen, page:()=> InvitationScreen()),
     GetPage(name: Routes.OtpScreen, page:()=> OtpScreen()),
     GetPage(name: Routes.ChangePasswordScreen, page:()=> ChangePasswordScreen()),
     GetPage(name: Routes.ForgotPasswordScreen, page:()=> ForgotPasswordScreen()),
  ];
}