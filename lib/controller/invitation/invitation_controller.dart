import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvitationController extends GetxController {

  final formKey = GlobalKey<FormState>();
  void submit() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
  }
}