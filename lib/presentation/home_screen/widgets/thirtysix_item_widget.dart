import '../models/thirtysix_item_model.dart';
import 'package:test_2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:test_2/core/app_export.dart';

// ignore: must_be_immutable
class ThirtysixItemWidget extends StatelessWidget {
  ThirtysixItemWidget(
    this.thirtysixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtysixItemModel thirtysixItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 242.v,
      width: 180.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.all(20.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: thirtysixItemModelObj?.drTracyAustin,
                    height: 136.v,
                    width: 140.h,
                    radius: BorderRadius.circular(
                      30.h,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    thirtysixItemModelObj.drTracyAustin1!,
                    style: CustomTextStyles.labelLargeOnPrimary,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    thirtysixItemModelObj.dentalSpecialist!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          _buildBook(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBook(BuildContext context) {
    return CustomElevatedButton(
      height: 32.v,
      width: 68.h,
      text: "lbl_book".tr,
      buttonTextStyle: theme.textTheme.titleMedium!,
      alignment: Alignment.bottomCenter,
    );
  }
}
