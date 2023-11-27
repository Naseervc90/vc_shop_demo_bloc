import '../../../core/app_export.dart';

/// This class is used in the [list1_item_widget] screen.
class List1ItemModel {
  List1ItemModel({
    this.longSleeveTshirt,
    this.longSleeveTShirt,
    this.id,
  }) {
    longSleeveTshirt = longSleeveTshirt ?? ImageConstant.imgImage171x171;
    longSleeveTShirt = longSleeveTShirt ?? "Long Sleeve T-shirt";
    id = id ?? "";
  }

  String? longSleeveTshirt;

  String? longSleeveTShirt;

  String? id;
}
