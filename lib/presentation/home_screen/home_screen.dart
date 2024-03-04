import 'package:test_2/core/utils/size_utils.dart';
import 'package:test_2/localization/app_localization.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'widgets/thirtyfive_item_widget.dart';
import 'models/thirtyfive_item_model.dart';
import 'models/home_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_2/widgets/custom_text_form_field.dart';
import 'package:test_2/core/utils/validation_functions.dart';
import 'package:test_2/widgets/custom_elevated_button.dart';
import 'widgets/thirtysix_item_widget.dart';
import 'models/thirtysix_item_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:test_2/core/app_export.dart';
import 'provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenState createState() => HomeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomeScreen(),
    );
  }
}

class HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 1123.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        _buildThirty(context),
                        _buildTwentyNine(context),
                        _buildFifteen(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Text(
                        "lbl_our_specialists".tr,
                        style: CustomTextStyles.titleMediumGray90001,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildThirtySix(context),
                  SizedBox(height: 45.v),
                  _buildFortySix(context),
                  SizedBox(height: 45.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 38.v,
        ),
        decoration: AppDecoration.fillGreenA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder50,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 102.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "lbl_choose_problems".tr,
                style: CustomTextStyles.titleMediumGray90001,
              ),
            ),
            SizedBox(height: 15.v),
            Consumer<HomeProvider>(
              builder: (context, provider, child) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 147.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.h,
                    crossAxisSpacing: 20.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: provider.homeModelObj.thirtyfiveItemList.length,
                  itemBuilder: (context, index) {
                    ThirtyfiveItemModel model =
                        provider.homeModelObj.thirtyfiveItemList[index];
                    return ThirtyfiveItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            SizedBox(height: 25.v),
            SizedBox(
              height: 10.v,
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 2,
                effect: ScrollingDotsEffect(
                  activeDotColor: Color(0X1212121D),
                  dotHeight: 10.v,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Selector<HomeProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.searchController,
        builder: (context, searchController, child) {
          return CustomTextFormField(
            controller: searchController,
            hintText: "lbl_search_doctor".tr,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 11.v, 20.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray90002,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 20.h,
              top: 13.v,
              bottom: 13.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 395.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse7135,
              height: 395.v,
              width: 430.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 18.v,
                    ),
                    decoration: AppDecoration.fillPrimary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPexelsPhotoBy,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            25.h,
                          ),
                          margin: EdgeInsets.only(top: 22.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 27.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_welcome".tr,
                                style: CustomTextStyles.bodySmallWhiteA70012,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "lbl_misty_simon".tr,
                                style: CustomTextStyles.titleMediumBold,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgCamera,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          margin: EdgeInsets.only(
                            top: 32.v,
                            bottom: 10.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildSearch(context),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Text(
                        "msg_appointment_booking".tr,
                        style: CustomTextStyles.titleMediumBold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<HomeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_enter_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Selector<HomeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.dateController,
      builder: (context, dateController, child) {
        return CustomTextFormField(
          controller: dateController,
          hintText: "msg_choose_date_time".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChooseProblem(BuildContext context) {
    return Selector<HomeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.chooseProblemController,
      builder: (context, chooseProblemController, child) {
        return CustomTextFormField(
          controller: chooseProblemController,
          hintText: "lbl_choose_problem".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChooseTest(BuildContext context) {
    return Selector<HomeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.chooseTestController,
      builder: (context, chooseTestController, child) {
        return CustomTextFormField(
          controller: chooseTestController,
          hintText: "lbl_choose_test".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChooseConsultation(BuildContext context) {
    return Selector<HomeProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.chooseConsultationController,
      builder: (context, chooseConsultationController, child) {
        return CustomTextFormField(
          controller: chooseConsultationController,
          hintText: "msg_choose_consultation".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBookAppointment(BuildContext context) {
    return CustomElevatedButton(
      width: 340.h,
      text: "msg_book_appointment".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      alignment: Alignment.topCenter,
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 25.h,
          top: 228.v,
          right: 25.h,
        ),
        padding: EdgeInsets.all(20.h),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildName(context),
            SizedBox(height: 20.v),
            _buildDate(context),
            SizedBox(height: 20.v),
            _buildChooseProblem(context),
            SizedBox(height: 20.v),
            _buildChooseTest(context),
            SizedBox(height: 20.v),
            _buildChooseConsultation(context),
            SizedBox(height: 20.v),
            SizedBox(
              height: 53.v,
              width: 340.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 16.v,
                      width: 305.h,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(
                          152.h,
                        ),
                      ),
                    ),
                  ),
                  _buildBookAppointment(context),
                ],
              ),
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 28.h,
      ),
      child: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 243.v,
              crossAxisCount: 2,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 20.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider.homeModelObj.thirtysixItemList.length,
            itemBuilder: (context, index) {
              ThirtysixItemModel model =
                  provider.homeModelObj.thirtysixItemList[index];
              return ThirtysixItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Container(
      height: 233.v,
      width: double.maxFinite,
      decoration: AppDecoration.fillGray900.copyWith(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup46,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgObject,
            height: 168.v,
            width: 239.h,
            alignment: Alignment.topRight,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                top: 25.v,
              ),
              child: Text(
                "lbl_address".tr,
                style: CustomTextStyles.titleMediumBold_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 25.h,
                right: 190.h,
                bottom: 37.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_dental_clinic".tr,
                    style: CustomTextStyles.titleMediumDeeppurpleA100,
                  ),
                  Container(
                    width: 147.h,
                    margin: EdgeInsets.only(right: 27.h),
                    child: Text(
                      "msg_34_harsh_heights".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallWhiteA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
