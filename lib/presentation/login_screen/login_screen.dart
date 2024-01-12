import 'package:aquahub_10/core/app_export.dart';
import 'package:aquahub_10/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              SizedBox(
                                  height: 466.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgTaychinOlanwic,
                                            height: 466.v,
                                            width: 430.h,
                                            radius: BorderRadius.vertical(
                                                bottom: Radius.circular(30.h)),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLogoInverted,
                                            height: 48.v,
                                            width: 209.h,
                                            alignment: Alignment.bottomLeft,
                                            margin:
                                                EdgeInsets.only(bottom: 22.v))
                                      ])),
                              SizedBox(height: 40.v),
                              _buildLoginForm(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return SizedBox(
        height: 397.v,
        width: 390.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(right: 17.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Login",
                                  style: theme.textTheme.displayMedium),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLoginLogo,
                                  height: 35.adaptSize,
                                  width: 35.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 11.h, top: 9.v, bottom: 10.v))
                            ]),
                        SizedBox(height: 14.v),
                        SizedBox(
                            width: 372.h,
                            child: Text(
                                "Silahkan Login untuk melanjutkan perjalanan anda.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineSmall!
                                    .copyWith(height: 1.21))),
                        SizedBox(height: 204.v),
                        GestureDetector(
                            onTap: () {
                              onTapTxtBelummemilikiakunregister(context);
                            },
                            child: SizedBox(
                                width: 148.h,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "belum memiliki akun?\n",
                                          style: CustomTextStyles
                                              .bodyMediumff212121),
                                      TextSpan(
                                          text: "register disini",
                                          style: CustomTextStyles
                                              .titleSmallff212121
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline))
                                    ]),
                                    textAlign: TextAlign.left)))
                      ]))),
          Padding(
              padding: EdgeInsets.only(top: 159.v),
              child: CustomTextFormField(
                  width: 390.h,
                  controller: userNameController,
                  hintText: "username",
                  alignment: Alignment.topCenter,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPerson2,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 60.v))),
          Padding(
              padding: EdgeInsets.only(bottom: 103.v),
              child: CustomTextFormField(
                  width: 390.h,
                  controller: passwordController,
                  hintText: "password",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  alignment: Alignment.bottomCenter,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 22.v, 24.h, 22.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPassword,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 60.v),
                  obscureText: true)),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 74.v,
                  width: 84.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 23.v),
                  decoration: AppDecoration.fillGray900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowOutward,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      alignment: Alignment.center)))
        ]));
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtBelummemilikiakunregister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
