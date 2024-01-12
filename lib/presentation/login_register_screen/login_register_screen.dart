import 'package:aquahub_10/core/app_export.dart';
import 'package:aquahub_10/widgets/custom_elevated_button.dart';
import 'package:aquahub_10/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 699.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHobiIndustriT,
                            height: 699.v,
                            width: 430.h,
                            radius: BorderRadius.vertical(
                                bottom: Radius.circular(30.h)),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                height: 5.v,
                                margin:
                                    EdgeInsets.only(left: 20.h, bottom: 23.v),
                                child: AnimatedSmoothIndicator(
                                    activeIndex: 0,
                                    count: 3,
                                    effect: ScrollingDotsEffect(
                                        spacing: 3.4,
                                        activeDotColor: appTheme.gray100,
                                        dotColor: appTheme.gray100,
                                        dotHeight: 5.v,
                                        dotWidth: 5.h))))
                      ])),
                  SizedBox(height: 29.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogo1,
                      height: 48.v,
                      width: 207.h,
                      alignment: Alignment.centerLeft),
                  SizedBox(height: 30.v),
                  _buildLoginRegisterRow(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildLoginRegisterRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomElevatedButton(
              width: 187.h,
              text: "login",
              onPressed: () {
                onTapLogin(context);
              }),
          CustomOutlinedButton(
              width: 187.h,
              text: "register",
              margin: EdgeInsets.only(left: 16.h),
              onPressed: () {
                onTapRegister(context);
              })
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
