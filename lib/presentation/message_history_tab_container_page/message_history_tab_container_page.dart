import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/presentation/message_history_page/message_history_page.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessageHistoryTabContainerPage extends StatefulWidget {
  @override
  _MessageHistoryTabContainerPageState createState() =>
      _MessageHistoryTabContainerPageState();
}

class _MessageHistoryTabContainerPageState
    extends State<MessageHistoryTabContainerPage>
    with TickerProviderStateMixin {
  late TabController group125Controller;

  @override
  void initState() {
    super.initState();
    group125Controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            48,
          ),
          title: Padding(
            padding: getPadding(
              left: 21,
            ),
            child: Text(
              "Message",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold24,
            ),
          ),
          actions: [
            Container(
              height: getVerticalSize(
                33,
              ),
              width: getHorizontalSize(
                24,
              ),
              margin: getMargin(
                left: 20,
                top: 8,
                right: 20,
                bottom: 7,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  AppbarImage(
                    height: getVerticalSize(
                      16,
                    ),
                    width: getHorizontalSize(
                      4,
                    ),
                    svgPath: ImageConstant.imgComponent1WhiteA700,
                    margin: getMargin(
                      left: 20,
                      top: 17,
                    ),
                  ),
                  AppbarImage(
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    svgPath: ImageConstant.imgSearch24x24,
                    margin: getMargin(
                      bottom: 9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          margin: getMargin(
            top: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  46,
                ),
                width: getHorizontalSize(
                  335,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray10002,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                ),
                child: TabBar(
                  controller: group125Controller,
                  labelColor: ColorConstant.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: ColorConstant.gray90001,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                  ),
                  indicator: BoxDecoration(
                    color: ColorConstant.blue600,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        8,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "All",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Group",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Private",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  579,
                ),
                child: TabBarView(
                  controller: group125Controller,
                  children: [
                    MessageHistoryPage(),
                    MessageHistoryPage(),
                    MessageHistoryPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 55,
          width: 55,
          child: CustomImageView(
            svgPath: ImageConstant.imgUser55x55,
            height: getVerticalSize(
              27.5,
            ),
            width: getHorizontalSize(
              27.5,
            ),
          ),
        ),
      ),
    );
  }
}
