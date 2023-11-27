// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'ninetyseven_item_model.dart';
import 'mainlanding_item_model.dart';
import 'package:lumxsoft_demo_shopping/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [main_landing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainLandingModel extends Equatable {
  MainLandingModel({
    this.frameItemList = const [],
    this.ninetysevenItemList = const [],
    this.mainlandingItemList = const [],
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
    this.dropdownItemList2 = const [],
  }) {}

  List<FrameItemModel> frameItemList;

  List<NinetysevenItemModel> ninetysevenItemList;

  List<MainlandingItemModel> mainlandingItemList;

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  List<SelectionPopupModel> dropdownItemList2;

  MainLandingModel copyWith({
    List<FrameItemModel>? frameItemList,
    List<NinetysevenItemModel>? ninetysevenItemList,
    List<MainlandingItemModel>? mainlandingItemList,
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<SelectionPopupModel>? dropdownItemList2,
  }) {
    return MainLandingModel(
      frameItemList: frameItemList ?? this.frameItemList,
      ninetysevenItemList: ninetysevenItemList ?? this.ninetysevenItemList,
      mainlandingItemList: mainlandingItemList ?? this.mainlandingItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      dropdownItemList2: dropdownItemList2 ?? this.dropdownItemList2,
    );
  }

  @override
  List<Object?> get props => [
        frameItemList,
        ninetysevenItemList,
        mainlandingItemList,
        dropdownItemList,
        dropdownItemList1,
        dropdownItemList2
      ];
}
