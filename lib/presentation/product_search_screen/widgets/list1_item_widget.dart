import '../models/list1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lumxsoft_demo_shopping/core/app_export.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  List1ItemWidget(
    this.list1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List1ItemModel list1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: list1ItemModelObj?.longSleeveTshirt,
          height: 171.adaptSize,
          width: 171.adaptSize,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          list1ItemModelObj.longSleeveTShirt!,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
