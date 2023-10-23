import '../pharmacy_screen/widgets/listcalciumllysin_item_widget.dart';
import '../pharmacy_screen/widgets/listef58faa9a71e47e_item_widget.dart';
import 'dart:async';
import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PharmacyScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  Completer<WebViewController> webViewController =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft8(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "Pharmacy"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgCart,
                      margin: getMargin(left: 24, top: 9, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: searchController,
                          hintText: "Search drugs, category",
                          margin: getMargin(left: 24, right: 24),
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 11, right: 8, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Container(
                          height: getVerticalSize(135),
                          width: getHorizontalSize(335),
                          margin: getMargin(top: 24),
                          child: WebView(
                              initialUrl: 'https://flutter.dev',
                              javascriptMode: JavascriptMode.unrestricted,
                              onWebViewCreated: (WebViewController controller) {
                                webViewController.complete(controller);
                              },
                              onProgress: (int progress) {
                                print(
                                    "WebView is loading (progress : $progress%)");
                              },
                              onPageStarted: (String url) {
                                print("Page started loading: $url");
                              },
                              onPageFinished: (String url) {
                                print("Page finished loading: $url");
                              })),
                      Padding(
                          padding: getPadding(left: 21, top: 25, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Popular Product",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold16Gray90001),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("See all",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanMedium14))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(178),
                              child: ListView.separated(
                                  padding: getPadding(left: 21, top: 13),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(21));
                                  },
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Listef58faa9a71e47eItemWidget();
                                  }))),
                      Padding(
                          padding: getPadding(left: 21, top: 23, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Product on Sale",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold16Gray90001),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("See all",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanMedium14))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(180),
                              child: ListView.separated(
                                  padding: getPadding(left: 21, top: 15),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(17));
                                  },
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return ListcalciumllysinItemWidget();
                                  })))
                    ]))));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
