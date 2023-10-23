import 'package:ambulance/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorsItemWidget extends StatelessWidget {
  DoctorsItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse8864x64,
              height: getSize(
                64,
              ),
              width: getSize(
                64,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  32,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayRomanMedium13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
