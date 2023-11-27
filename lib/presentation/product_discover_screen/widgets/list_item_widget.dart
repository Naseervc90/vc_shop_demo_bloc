import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:lumxsoft_demo_shopping/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: listItemModelObj?.image,
          height: 236.v,
          width: 171.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          width: 153.h,
          child: Text(
            listItemModelObj.womenBlueSkinny!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallOnPrimary.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          listItemModelObj.price!,
          style: CustomTextStyles.titleSmallPrimarySemiBold,
        ),
      ],
    );
  }
}
