import 'package:aquahub_10/core/app_export.dart';
import 'package:aquahub_10/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

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
                              _buildImageWithLogo(context),
                              SizedBox(height: 41.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Register",
                                                style: theme
                                                    .textTheme.displayMedium),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgAppRegistration,
                                                height: 35.adaptSize,
                                                width: 35.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 9.h,
                                                    top: 8.v,
                                                    bottom: 11.v))
                                          ]))),
                              SizedBox(height: 14.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: 375.h,
                                      margin: EdgeInsets.only(
                                          left: 20.h, right: 34.h),
                                      child: Text(
                                          "Silahkan Register untuk membuat akun anda.",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.headlineSmall!
                                              .copyWith(height: 1.21)))),
                              SizedBox(height: 17.v),
                              _buildUserName(context),
                              SizedBox(height: 15.v),
                              _buildEmail(context),
                              SizedBox(height: 15.v),
                              _buildPassword(context),
                              SizedBox(height: 15.v),
                              _buildConfirmPassword(context),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildOkeButton(context)));
  }

  /// Section Widget
  Widget _buildImageWithLogo(BuildContext context) {
    return SizedBox(
        height: 310.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgClaudioGuglier,
              height: 310.v,
              width: 430.h,
              radius: BorderRadius.vertical(bottom: Radius.circular(30.h)),
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgLogoInverted,
              height: 48.v,
              width: 209.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 22.v))
        ]));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            controller: userNameController,
            hintText: "username",
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgPerson2,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 60.v)));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "email",
            textInputType: TextInputType.emailAddress,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEmail,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 60.v)));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "password",
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 22.v, 24.h, 22.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgPassword,
                    height: 16.adaptSize,
                    width: 16.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 60.v),
            obscureText: true));
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            controller: confirmPasswordController,
            hintText: "confirm password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 22.v, 24.h, 22.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgPassword,
                    height: 16.adaptSize,
                    width: 16.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 60.v),
            obscureText: true));
  }

  /// Section Widget
  Widget _buildOkeButton(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 36.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
              onTap: () {
                onTapTxtSudahmemilikiakunlogin(context);
              },
              child: Container(
                  width: 148.h,
                  margin: EdgeInsets.only(top: 19.v, bottom: 11.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "sudah memiliki akun?\n",
                            style: CustomTextStyles.bodyMediumff212121),
                        TextSpan(
                            text: "login disini",
                            style: CustomTextStyles.titleSmallff212121
                                .copyWith(decoration: TextDecoration.underline))
                      ]),
                      textAlign: TextAlign.left))),
          Container(
              height: 74.v,
              width: 84.h,
              margin: EdgeInsets.only(left: 157.h),
              padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 23.v),
              decoration: AppDecoration.fillGray900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowOutward,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  alignment: Alignment.center))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtSudahmemilikiakunlogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
