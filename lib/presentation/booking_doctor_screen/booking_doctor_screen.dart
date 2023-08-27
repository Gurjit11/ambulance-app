import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:ambulance/presentation/booking_doctor_success_dialog/booking_doctor_success_dialog.dart';

class BookingDoctorScreen extends StatelessWidget {
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
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "Appointment")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 28, right: 24, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 8, top: 4, right: 30),
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
                          padding: getPadding(left: 1, top: 31),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Date",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold16Gray90001)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("Change",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanRegular14Blue600))
                              ])),
                      Padding(
                          padding: getPadding(top: 9, right: 42),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: getSize(36),
                                width: getSize(36)),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 10, bottom: 8),
                                child: Text(
                                    "Wednesday, Jun 23, 2021 | 10:00 AM",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold14Gray700))
                          ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Reason",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold16Gray90001)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("Change",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanRegular14Blue600))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(children: [
                            CustomIconButton(
                                height: 36,
                                width: 36,
                                shape: IconButtonShape.CircleBorder18,
                                padding: IconButtonPadding.PaddingAll9,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgShare)),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 10, bottom: 8),
                                child: Text("Chest pain",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold14Gray90001))
                          ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray10001)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("Payment Detail",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRalewayRomanSemiBold16Gray90001)),
                      Padding(
                          padding: getPadding(top: 12, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Consultation",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanRegular14Bluegray300),
                                Text("60.00",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanRegular14Gray90001)
                              ])),
                      Padding(
                          padding: getPadding(top: 11, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Admin Fee",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanRegular14Bluegray300),
                                Text("01.00",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanRegular14Gray90001)
                              ])),
                      Padding(
                          padding: getPadding(top: 11, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Aditional Discount",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanRegular14Bluegray300)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("-",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanRegular14Gray700))
                              ])),
                      Padding(
                          padding: getPadding(top: 10, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold14Gray90001),
                                Text("61.00",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanSemiBold14)
                              ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray10001,
                              endIndent: getHorizontalSize(8))),
                      Padding(
                          padding: getPadding(left: 2, top: 17),
                          child: Text("Payment Method",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRalewayRomanSemiBold16Gray90001)),
                      Container(
                          margin: getMargin(top: 13),
                          padding: getPadding(all: 14),
                          decoration: AppDecoration.outlineBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("VISA",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBlackItalic16)),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 2),
                                    child: Text("Change",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanRegular12))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 26),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 3, bottom: 5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Total",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanMedium14Bluegray300),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text(" 61.00",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold18Gray90001))
                              ])),
                      CustomButton(
                          height: getVerticalSize(50),
                          width: getHorizontalSize(192),
                          text: "Book Now",
                          fontStyle:
                              ButtonFontStyle.RalewayRomanSemiBold14WhiteA700,
                          onTap: () {
                            onTapBooknow(context);
                          })
                    ]))));
  }

  onTapBooknow(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: BookingDoctorSuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
