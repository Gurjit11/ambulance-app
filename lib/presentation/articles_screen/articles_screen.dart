import '../articles_screen/widgets/listrectangle460_item_widget.dart';
import '../articles_screen/widgets/listunsplash86rvjm9zowy_item_widget.dart';
import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ArticlesScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

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
                      onTapArrowleft7(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "Articles"),
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: searchController,
                          hintText: "Search articles, news...",
                          margin: getMargin(left: 24, top: 24, right: 24),
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 25),
                              child: Text("Popular Articles",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanSemiBold16Gray90001))),
                      Padding(
                          padding: getPadding(left: 25, top: 13, right: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(94),
                                    padding: getPadding(
                                        left: 17,
                                        top: 15,
                                        right: 17,
                                        bottom: 15),
                                    decoration: AppDecoration.txtFillBlue600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8),
                                    child: Text("Covid-19",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold14WhiteA700)),
                                Container(
                                    width: getHorizontalSize(117),
                                    margin: getMargin(left: 5),
                                    padding: getPadding(
                                        left: 30,
                                        top: 16,
                                        right: 45,
                                        bottom: 16),
                                    decoration: AppDecoration.txtFillBlue600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8),
                                    child: Text("Diet",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold14WhiteA700)),
                                Container(
                                    width: getHorizontalSize(116),
                                    margin: getMargin(left: 5),
                                    padding: getPadding(
                                        left: 30,
                                        top: 16,
                                        right: 34,
                                        bottom: 16),
                                    decoration: AppDecoration.txtFillBlue600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8),
                                    child: Text("Fitness",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewayRomanSemiBold14WhiteA700))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 25, right: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Trending Articles",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold16Gray90001),
                                Padding(
                                    padding: getPadding(bottom: 4),
                                    child: Text("See all",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanRegular12))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(232),
                              child: ListView.separated(
                                  padding: getPadding(left: 24, top: 13),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(15));
                                  },
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Listrectangle460ItemWidget();
                                  }))),
                      Padding(
                          padding: getPadding(left: 20, top: 23, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Related Articles",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold16Black900),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 2),
                                    child: Text("See all",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanRegular12))
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 15, right: 20),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(10));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Listunsplash86rvjm9zowyItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
