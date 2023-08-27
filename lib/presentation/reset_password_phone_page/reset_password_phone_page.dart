import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordPhonePage extends StatefulWidget {
  @override
  _ResetPasswordPhonePageState createState() => _ResetPasswordPhonePageState();
  onTapSendotp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordVerifyCodeScreen);
  }
}

// ignore_for_file: must_be_immutable
class _ResetPasswordPhonePageState extends State<ResetPasswordPhonePage>
    with AutomaticKeepAliveClientMixin<ResetPasswordPhonePage> {
  TextEditingController mobileNoController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 24, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: mobileNoController,
                                    hintText: "1234567890",
                                    variant:
                                        TextFormFieldVariant.OutlineBlue600,
                                    padding: TextFormFieldPadding.PaddingT16_2,
                                    fontStyle: TextFormFieldFontStyle
                                        .RalewayRomanMedium16Gray900,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.phone,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 24,
                                            top: 16,
                                            right: 16,
                                            bottom: 16),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgCall)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(56))),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    text: "Send OTP",
                                    margin: getMargin(top: 32),
                                    onTap: () {
                                      onTapSendotp(context);
                                    })
                              ]))
                    ])))));
  }

  onTapSendotp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordVerifyCodeScreen);
  }
}
