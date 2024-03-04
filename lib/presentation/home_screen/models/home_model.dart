import '../../../core/app_export.dart';
import 'thirtyfive_item_model.dart';
import 'thirtysix_item_model.dart';

class HomeModel {
  List<ThirtyfiveItemModel> thirtyfiveItemList = [
    ThirtyfiveItemModel(
        dentalBraces: ImageConstant.imgNounBraces1507760,
        dentalBraces1: "Dental Braces"),
    ThirtyfiveItemModel(
        dentalBraces: ImageConstant.imgGroup1171274811,
        dentalBraces1: "Dental Crown"),
    ThirtyfiveItemModel(
        dentalBraces: ImageConstant.imgNounDentalFilling4504927,
        dentalBraces1: "Dental Filling"),
    ThirtyfiveItemModel(
        dentalBraces: ImageConstant.imgUser, dentalBraces1: "Anesthesia")
  ];

  List<ThirtysixItemModel> thirtysixItemList = [
    ThirtysixItemModel(
        drTracyAustin: ImageConstant.imgRectangle41903,
        drTracyAustin1: "Dr. Tracy Austin",
        dentalSpecialist: "Dental Specialist"),
    ThirtysixItemModel(
        drTracyAustin: ImageConstant.imgRectangle41904,
        drTracyAustin1: "Dr. Tracy Austin",
        dentalSpecialist: "Dental Specialist"),
    ThirtysixItemModel(
        drTracyAustin: ImageConstant.imgRectangle41905,
        drTracyAustin1: "Dr. Tracy Austin",
        dentalSpecialist: "Dental Specialist"),
    ThirtysixItemModel(
        drTracyAustin: ImageConstant.imgRectangle41906,
        drTracyAustin1: "Dr. Tracy Austin",
        dentalSpecialist: "Dental Specialist")
  ];
}
