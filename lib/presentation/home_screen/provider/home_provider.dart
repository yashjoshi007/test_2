import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_model.dart';
import '../models/thirtyfive_item_model.dart';
import '../models/thirtysix_item_model.dart';

/// A provider class for the HomeScreen.
///
/// This provider manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController chooseProblemController = TextEditingController();

  TextEditingController chooseTestController = TextEditingController();

  TextEditingController chooseConsultationController = TextEditingController();

  HomeModel homeModelObj = HomeModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    nameController.dispose();
    dateController.dispose();
    chooseProblemController.dispose();
    chooseTestController.dispose();
    chooseConsultationController.dispose();
  }
}
