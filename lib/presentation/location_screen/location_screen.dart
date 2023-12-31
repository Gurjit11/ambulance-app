import 'dart:async';
import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_search_view.dart';
import 'package:ambulance/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LocationScreen extends StatelessWidget {
  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController searchController = TextEditingController();

  TextEditingController group2238Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                      height: size.height,
                      width: double.maxFinite,
                      child: GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: CameraPosition(
                              target: LatLng(
                                  37.43296265331129, -122.08832357078792),
                              zoom: 14.4746),
                          onMapCreated: (GoogleMapController controller) {
                            googleMapController.complete(controller);
                          },
                          zoomControlsEnabled: false,
                          zoomGesturesEnabled: false,
                          myLocationButtonEnabled: false,
                          myLocationEnabled: false)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup2219),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(40),
                                    leadingWidth: 64,
                                    leading: AppbarImage(
                                        height: getSize(40),
                                        width: getSize(40),
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(left: 24),
                                        onTap: () {
                                          onTapArrowleft11(context);
                                        }),
                                    centerTitle: true,
                                    title: AppbarSubtitle2(text: "Ambulance"),
                                    styleType: Style.bgShadowBlack90019),
                                CustomSearchView(
                                    focusNode: FocusNode(),
                                    controller: searchController,
                                    hintText: "Search location, ZIP code..",
                                    margin:
                                        getMargin(left: 24, top: 43, right: 24),
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 16,
                                            top: 11,
                                            right: 8,
                                            bottom: 11),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(40)),
                                    suffix: Padding(
                                        padding: EdgeInsets.only(
                                            right: getHorizontalSize(15)),
                                        child: IconButton(
                                            onPressed: () {
                                              searchController.clear();
                                            },
                                            icon: Icon(Icons.clear,
                                                color: Colors.grey.shade600)))),
                                Spacer(),
                                Container(
                                    margin: getMargin(
                                        left: 10, right: 10, bottom: 27),
                                    padding: getPadding(
                                        left: 10,
                                        top: 14,
                                        right: 10,
                                        bottom: 14),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller: group2238Controller,
                                              hintText: "Confirm your address",
                                              variant: TextFormFieldVariant
                                                  .UnderLineBluegray50,
                                              fontStyle: TextFormFieldFontStyle
                                                  .RalewayRomanSemiBold14Gray90001,
                                              textInputAction:
                                                  TextInputAction.done),
                                          Padding(
                                              padding:
                                                  getPadding(left: 17, top: 15),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocation26x26,
                                                        height: getSize(26),
                                                        width: getSize(26),
                                                        margin: getMargin(
                                                            top: 5, bottom: 7)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                190),
                                                        margin:
                                                            getMargin(left: 17),
                                                        child: Text(
                                                            "1111 abcd Rd #102 Alexandria, Virginia(VA), 22314",
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRalewayRomanRegular14Gray700))
                                                  ])),
                                          CustomButton(
                                              height: getVerticalSize(50),
                                              text: "Confirm Location",
                                              margin: getMargin(
                                                  left: 4, top: 13, right: 4),
                                              fontStyle: ButtonFontStyle
                                                  .RalewayRomanSemiBold14WhiteA700)
                                        ]))
                              ])))
                ]))));
  }

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }
}
