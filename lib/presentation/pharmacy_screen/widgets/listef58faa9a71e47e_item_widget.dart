import 'package:ambulance/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listef58faa9a71e47eItemWidget extends StatelessWidget {
  Listef58faa9a71e47eItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 21,
          ),
          padding: getPadding(
            left: 7,
            top: 10,
            right: 7,
            bottom: 10,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEf58faa9a71e47e58x56,
                height: getVerticalSize(
                  58,
                ),
                width: getHorizontalSize(
                  56,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    29,
                  ),
                ),
                alignment: Alignment.center,
                margin: getMargin(
                  top: 11,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 14,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanSemiBold14Gray90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 8,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanMedium12Gray500,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 2,
                ),
                child: Row(
                  children: [
                    Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanSemiBold14Black900,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: getSize(
                        18,
                      ),
                      width: getSize(
                        18,
                      ),
                      margin: getMargin(
                        left: 42,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
