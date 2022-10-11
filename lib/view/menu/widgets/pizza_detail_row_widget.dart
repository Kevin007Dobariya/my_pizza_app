import 'package:flutter/material.dart';
import 'package:my_pizza/constants/text_style.dart';
import 'package:my_pizza/utils/screen_utils.dart';

class PizzaDetailRow extends StatelessWidget {
  final String? detailTitle;
  final List? detailValueList;
  final String? detailValue;
  final VoidCallbackFunction onChanged;

  PizzaDetailRow(
      {
    this.detailTitle,
    this.detailValueList,
    this.detailValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(detailTitle!,style: AppStyle.boldRoboto(size: 12),),
        flex: 2,),
      Expanded(
        child: Text(':',style: AppStyle.boldRoboto(size: 12),),),
      Expanded(
        flex: 8,
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: DropdownButton(
              isExpanded: true,
            value: detailValue,
            underline: Container(),
            items: detailValueList!.map((item) {
              return DropdownMenuItem<String>(
                child: Center(child: Text('$item',style: AppStyle.regularRoboto(size: 12))),
                value: item,);
            }).toList(),
            onChanged: onChanged),
        ),
      ),],);
  }
}
