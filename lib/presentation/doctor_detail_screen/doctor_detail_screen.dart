import '../doctor_detail_screen/widgets/chipviewgroupthirtysix_item_widget.dart';
import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DoctorDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "Doctor Detail"),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 11))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(right: 38),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle959111x111,
                                height: getSize(115),
                                width: getSize(115),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(8))),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 8, bottom: 6),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Dr. Marcus Horizon",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRalewayRomanSemiBold18Gray90001),
                                      Padding(
                                          padding: getPadding(top: 9),
                                          child: Text("Chardiologist",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanMedium14Gray500)),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(18),
                                                width: getSize(18),
                                                margin: getMargin(bottom: 1)),
                                            Padding(
                                                padding:
                                                    getPadding(left: 4, top: 3),
                                                child: Text("4.7",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanMedium135))
                                          ])),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(16),
                                                width: getSize(16),
                                                margin: getMargin(bottom: 1)),
                                            Padding(
                                                padding: getPadding(left: 4),
                                                child: Text("800m away",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanMedium14Gray500))
                                          ]))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("About",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRalewayRomanSemiBold16Gray90001)),
                      Container(
                          width: getHorizontalSize(305),
                          margin: getMargin(top: 12, right: 21),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam... ",
                                    style: TextStyle(
                                        color: ColorConstant.gray60001,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "Read more",
                                    style: TextStyle(
                                        color: ColorConstant.blue600,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(children: [
                            Container(
                                padding: getPadding(
                                    left: 12, top: 13, right: 12, bottom: 13),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("Mon",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(left: 1, top: 2),
                                          child: Text("21",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ])),
                            Container(
                                margin: getMargin(left: 12),
                                padding: getPadding(
                                    left: 11, top: 13, right: 11, bottom: 13),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 2, top: 1),
                                          child: Text("Tue",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("22",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(all: 11),
                                decoration: AppDecoration.style.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("Wed",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10WhiteA700)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("23",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(
                                    left: 11, top: 12, right: 11, bottom: 12),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 2, top: 2),
                                          child: Text("Thu",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("24",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ])),
                            Container(
                                margin: getMargin(left: 11),
                                padding: getPadding(all: 11),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 5, top: 2),
                                          child: Text("Fri",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("25",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ])),
                            Container(
                                margin: getMargin(left: 6),
                                padding: getPadding(
                                    left: 11, top: 14, right: 11, bottom: 14),
                                decoration: AppDecoration.outlineBluegray50
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 3),
                                          child: Text("Sat",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanRegular10)),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("26",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold18Gray90001))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray50)),
                      Padding(
                          padding: getPadding(top: 32, bottom: 5),
                          child: Wrap(
                              runSpacing: getVerticalSize(5),
                              spacing: getHorizontalSize(5),
                              children: List<Widget>.generate(
                                  9,
                                  (index) =>
                                      ChipviewgroupthirtysixItemWidget())))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      variant: IconButtonVariant.FillBlue5002,
                      shape: IconButtonShape.RoundedBorder8,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgMusic50x50)),
                  Expanded(
                      child: CustomButton(
                          height: getVerticalSize(50),
                          text: "Book Apointment",
                          margin: getMargin(left: 11),
                          fontStyle:
                              ButtonFontStyle.RalewayRomanSemiBold14WhiteA700,
                          onTap: () {
                            onTapBookapointmentOne(context);
                          }))
                ]))));
  }

  onTapBookapointmentOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookingDoctorScreen);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
