import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ambulance/presentation/create_new_password_success_dialog/create_new_password_success_dialog.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreen extends StatelessWidget {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(40),
                          width: getSize(40),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Text("Create New Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanBold24)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("Create your new password to login",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: inputController,
                          hintText: "Enter new password",
                          margin: getMargin(top: 24),
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCar)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 12, top: 16, right: 24, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark24x24)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: inputOneController,
                          hintText: "Confirm password",
                          margin: getMargin(top: 16),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCar)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 16, right: 24, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark24x24)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          isObscureText: true),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Create Password",
                          margin: getMargin(top: 24, bottom: 5),
                          onTap: () {
                            onTapCreatepasswordOne(context);
                          })
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapCreatepasswordOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: CreateNewPasswordSuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }
}
