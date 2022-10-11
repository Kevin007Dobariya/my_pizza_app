import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_strings.dart';
import 'package:my_pizza/utils/common_widgets/common_appbar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: AppString.wallet),
    );
  }
}
