import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordEmailPage extends StatefulWidget {
  @override
  _ResetPasswordEmailPageState createState() => _ResetPasswordEmailPageState();
}

class _ResetPasswordEmailPageState extends State<ResetPasswordEmailPage>
    with AutomaticKeepAliveClientMixin<ResetPasswordEmailPage> {
  TextEditingController emailController = TextEditingController();

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
                  padding: getPadding(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: emailController,
                        hintText: "xyz@gmail.com",
                        variant: TextFormFieldVariant.OutlineBlue600,
                        fontStyle:
                            TextFormFieldFontStyle.RalewayRomanMedium16Gray900,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        prefix: Container(
                          margin: getMargin(
                            left: 24,
                            top: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgClock,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            56,
                          ),
                        ),
                        suffix: Container(
                          margin: getMargin(
                            left: 30,
                            top: 20,
                            right: 24,
                            bottom: 20,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCheckmark16x16,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            56,
                          ),
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          56,
                        ),
                        text: "Send OTP",
                        margin: getMargin(
                          top: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
