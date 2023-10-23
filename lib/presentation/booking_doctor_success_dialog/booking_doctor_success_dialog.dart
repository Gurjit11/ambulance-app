import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookingDoctorSuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(327),
        padding: getPadding(left: 25, top: 49, right: 25, bottom: 49),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: getMargin(left: 81),
                  color: ColorConstant.gray50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder51),
                  child: Container(
                      height: getSize(102),
                      width: getSize(102),
                      padding:
                          getPadding(left: 29, top: 34, right: 29, bottom: 34),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder51),
                      child: Stack(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgCheckmark31x41,
                            height: getVerticalSize(31),
                            width: getHorizontalSize(41),
                            radius: BorderRadius.circular(getHorizontalSize(3)),
                            alignment: Alignment.center)
                      ]))),
              Padding(
                  padding: getPadding(left: 49, top: 43),
                  child: Text("Payment Success",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanBold20)),
              Container(
                  width: getHorizontalSize(265),
                  margin: getMargin(top: 8, right: 10),
                  child: Text(
                      "Your payment has been successful, you can have a consultation session with your trusted doctor",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRalewayRomanRegular16)),
              CustomButton(
                  height: getVerticalSize(56),
                  text: "Chat With Doctor",
                  margin: getMargin(left: 1, top: 22),
                  onTap: () {
                    onTapChatwithdoctorOne(context);
                  })
            ]));
  }

  onTapChatwithdoctorOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatWithDoctorScreen);
  }
}
