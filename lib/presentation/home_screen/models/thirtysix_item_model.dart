import '../../../core/app_export.dart';

/// This class is used in the [thirtysix_item_widget] screen.
class ThirtysixItemModel {
  ThirtysixItemModel({
    this.drTracyAustin,
    this.drTracyAustin1,
    this.dentalSpecialist,
    this.id,
  }) {
    drTracyAustin = drTracyAustin ?? ImageConstant.imgRectangle41903;
    drTracyAustin1 = drTracyAustin1 ?? "Dr. Tracy Austin";
    dentalSpecialist = dentalSpecialist ?? "Dental Specialist";
    id = id ?? "";
  }

  String? drTracyAustin;

  String? drTracyAustin1;

  String? dentalSpecialist;

  String? id;
}
