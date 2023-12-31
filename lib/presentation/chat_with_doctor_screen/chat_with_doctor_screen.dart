import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChatWithDoctorScreen extends StatelessWidget {
  TextEditingController typemessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 54,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 14),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Dr. Marcus Horizon", margin: getMargin(left: 9)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgVideocameraBlack900,
                      margin: getMargin(left: 20, top: 8, right: 8)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgCallBlack900,
                      margin: getMargin(left: 10, top: 8, right: 8),
                      onTap: () {
                        onTapCall(context);
                      }),
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 16, top: 10, right: 28, bottom: 6))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 42, right: 24, bottom: 42),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 7),
                              padding: getPadding(
                                  left: 40, top: 17, right: 40, bottom: 17),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder11),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Consultion Start",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold16Blue600),
                                    Padding(
                                        padding: getPadding(top: 5),
                                        child: Text(
                                            "You can consult your problem to the doctor",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanMedium12Gray500))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPexelscedricf40x40,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20))),
                            Padding(
                                padding:
                                    getPadding(left: 13, top: 3, bottom: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Dr. Marcus Horizon",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold14Gray90001),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text("10 min ago",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanMedium10))
                                    ]))
                          ])),
                      Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(
                              left: 15, top: 9, right: 15, bottom: 9),
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Hello, How can i help you?",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanRegular14Gray700)
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: getMargin(left: 90, top: 15),
                              padding: getPadding(all: 6),
                              decoration: AppDecoration.style.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            width: getHorizontalSize(200),
                                            margin: getMargin(
                                                left: 8, top: 6, bottom: 3),
                                            child: Text(
                                                "I have suffering from headache and cold for 3 days, I took 2 tablets of dolo, but still pain",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanRegular14WhiteA700))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark1,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(top: 54))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPexelscedricf40x391,
                                height: getVerticalSize(40),
                                width: getHorizontalSize(39),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20))),
                            Padding(
                                padding:
                                    getPadding(left: 13, top: 3, bottom: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Dr. Marcus Horizon",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold14Gray90001),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text("5 min ago",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanMedium10))
                                    ]))
                          ])),
                      Container(
                          width: getHorizontalSize(221),
                          margin: getMargin(top: 10),
                          padding: getPadding(
                              left: 13, top: 10, right: 13, bottom: 10),
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(186),
                                    child: Text(
                                        "Ok, Do you have fever? is the\nheadchace severe",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanRegular14Gray700))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: getMargin(left: 90, top: 15),
                              padding: getPadding(
                                  left: 5, top: 6, right: 5, bottom: 6),
                              decoration: AppDecoration.style.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            width: getHorizontalSize(165),
                                            margin: getMargin(
                                                left: 9, top: 4, bottom: 1),
                                            child: Text(
                                                "I don,t have any fever, but headchace is painful",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanRegular14WhiteA700))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark1,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(left: 36, top: 30))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPexelscedricf40x391,
                                height: getVerticalSize(40),
                                width: getHorizontalSize(39),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20))),
                            Padding(
                                padding:
                                    getPadding(left: 13, top: 3, bottom: 2),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Dr. Marcus Horizon",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold14Gray90001),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("Online",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanMedium10))
                                    ]))
                          ])),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 10),
                          color: ColorConstant.gray200,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.customBorderBL5),
                          child: Container(
                              height: getVerticalSize(22),
                              width: getHorizontalSize(58),
                              padding: getPadding(
                                  left: 13, top: 8, right: 13, bottom: 8),
                              decoration: AppDecoration.fillGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL5),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup141,
                                    height: getVerticalSize(5),
                                    width: getHorizontalSize(32),
                                    alignment: Alignment.bottomCenter)
                              ])))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 26),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomTextFormField(
                      width: getHorizontalSize(207),
                      focusNode: FocusNode(),
                      controller: typemessageController,
                      hintText: "Type message ...",
                      variant: TextFormFieldVariant.OutlineBluegray50,
                      padding: TextFormFieldPadding.PaddingT14,
                      fontStyle:
                          TextFormFieldFontStyle.RalewayRomanRegular14Gray500,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin: getMargin(
                              left: 30, top: 15, right: 17, bottom: 15),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgCut)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(50))),
                  CustomButton(
                      height: getVerticalSize(50),
                      width: getHorizontalSize(111),
                      text: "Send",
                      margin: getMargin(left: 9),
                      fontStyle:
                          ButtonFontStyle.RalewayRomanSemiBold14WhiteA700)
                ]))));
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }

  onTapCall(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.audioCallScreen);
  }
}
