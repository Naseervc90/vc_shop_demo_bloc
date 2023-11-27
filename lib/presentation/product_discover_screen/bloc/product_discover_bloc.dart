import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/list_item_model.dart';
import 'package:lumxsoft_demo_shopping/presentation/product_discover_screen/models/product_discover_model.dart';
part 'product_discover_event.dart';
part 'product_discover_state.dart';

/// A bloc that manages the state of a ProductDiscover according to the event that is dispatched to it.
class ProductDiscoverBloc
    extends Bloc<ProductDiscoverEvent, ProductDiscoverState> {
  ProductDiscoverBloc(ProductDiscoverState initialState) : super(initialState) {
    on<ProductDiscoverInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductDiscoverInitialEvent event,
    Emitter<ProductDiscoverState> emit,
  ) async {
    emit(state.copyWith(
        productDiscoverModelObj: state.productDiscoverModelObj
            ?.copyWith(listItemList: fillListItemList())));
  }

  List<ListItemModel> fillListItemList() {
    return [
      ListItemModel(
          image: ImageConstant.imgImage3,
          womenBlueSkinny: "Women Blue Skinny Fit High-Rise Light Fade ",
          price: " 13.99"),
      ListItemModel(
          image: ImageConstant.imgImage4,
          womenBlueSkinny: "Blue Pure Cotton Relaxed Fit High-Rise Clean Look ",
          price: " 24.99"),
      ListItemModel(
          image: ImageConstant.imgImage5,
          womenBlueSkinny: "Women Blue Skinny Fit High-Rise Light Fade ",
          price: " 13.99"),
      ListItemModel(
          image: ImageConstant.imgImage6,
          womenBlueSkinny: "Fit High-Rise Clean Look Stretchable Cropped Jeans",
          price: " 24.99")
    ];
  }
}
