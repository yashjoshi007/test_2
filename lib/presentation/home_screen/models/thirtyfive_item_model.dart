import '../../../core/app_export.dart';

/// This class is used in the [thirtyfive_item_widget] screen.
class ThirtyfiveItemModel {
  ThirtyfiveItemModel({
    this.dentalBraces,
    this.dentalBraces1,
    this.id,
  }) {
    dentalBraces = dentalBraces ?? ImageConstant.imgNounBraces1507760;
    dentalBraces1 = dentalBraces1 ?? "Dental Braces";
    id = id ?? "";
  }

  String? dentalBraces;

  String? dentalBraces1;

  String? id;
}
