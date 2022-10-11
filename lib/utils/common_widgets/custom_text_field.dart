import 'package:flutter/material.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/utils/screen_utils.dart';

Widget customTextField(
    {String? labelText,
      String? hintText,
      StringCallbackFunction? validation,
      Widget? suffix,
      Color? styleColor,
      VoidCallbackFunction? onSaved,
      VoidEmptyParameterCallbackFunction? onPasswordSuffixPress,
      int? maxLength,
      // bool passwordSuffix=false,
      // bool? passwordShowe=true,
      TextEditingController? controller,
      bool? obscureText,
      Widget? suffixIcon,
      VoidEmptyParameterCallbackFunction? onPress,
      VoidCallbackFunction? onChanged,
      TextInputType? textInputType,
      bool? readOnly}) {
  return Container(
    margin: EdgeInsets.only(bottom: 3),
    width: double.infinity,
    child: TextFormField(
      controller: controller,

        onChanged: onChanged ??null,
        onSaved: onSaved??null,
        maxLength: maxLength ?? null,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: TextStyle(color: styleColor?? Colors.black),
        onTap: onPress ?? null,
        readOnly: readOnly ?? false,
        validator: validation??null,
        obscureText: obscureText ?? false,
        keyboardType: textInputType ?? null,
        decoration: InputDecoration(
          suffix: suffix??null,/*passwordSuffix ?
          IconButton(
            icon: Icon(
              passwordShowe! ? Icons.visibility : Icons.visibility_off,),
            onPressed: onPasswordSuffixPress,)
              :*/
          suffixIcon:  suffixIcon??null,
          suffixStyle: TextStyle(color: AppColors.themeColorRed),
          labelText: labelText ?? null,
          labelStyle: TextStyle(
              color:Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 12),
          hintText: hintText,
          hintStyle: TextStyle(
                color:  Colors.grey.shade400,
              fontWeight: FontWeight.bold,
              fontSize: 12),
          fillColor: Colors.white,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              width: 2.0,
              color: Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              width: 2.0,
              color: AppColors.themeColorRed,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              width: 2.0,
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        )),
  );
}