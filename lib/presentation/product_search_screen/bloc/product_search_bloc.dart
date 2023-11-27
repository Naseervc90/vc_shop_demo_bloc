import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/list1_item_model.dart';
import 'package:lumxsoft_demo_shopping/presentation/product_search_screen/models/product_search_model.dart';
part 'product_search_event.dart';
part 'product_search_state.dart';

/// A bloc that manages the state of a ProductSearch according to the event that is dispatched to it.
class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  ProductSearchBloc(ProductSearchState initialState) : super(initialState) {
    on<ProductSearchInitialEvent>(_onInitialize);
  }

  List<List1ItemModel> fillList1ItemList() {
    return [
      List1ItemModel(
          longSleeveTshirt: ImageConstant.imgImage171x171,
          longSleeveTShirt: "Long Sleeve T-shirt"),
      List1ItemModel(
          longSleeveTshirt: ImageConstant.imgImage7,
          longSleeveTShirt: "Sliders"),
      List1ItemModel(
          longSleeveTshirt: ImageConstant.imgImage8,
          longSleeveTShirt: "Slippers"),
      List1ItemModel(
          longSleeveTshirt: ImageConstant.imgImage9,
          longSleeveTShirt: "Long Sleeve Top"),
      List1ItemModel(
          longSleeveTshirt: ImageConstant.imgImage10,
          longSleeveTShirt: "Slip Dress"),
      List1ItemModel(
          longSleeveTshirt: ImageConstant.imgImage11,
          longSleeveTShirt: "Nike Slides")
    ];
  }

  _onInitialize(
    ProductSearchInitialEvent event,
    Emitter<ProductSearchState> emit,
  ) async {
    emit(state.copyWith(
      searchBarController: TextEditingController(),
    ));
    emit(state.copyWith(
        productSearchModelObj: state.productSearchModelObj?.copyWith(
      list1ItemList: fillList1ItemList(),
    )));
  }
}
