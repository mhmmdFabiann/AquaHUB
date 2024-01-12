import 'package:aquahub_10/core/app_export.dart';
import 'package:aquahub_10/widgets/custom_search_view.dart';
import 'package:aquahub_10/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 17.v),
                _buildHeader(context),
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "search",
                  ),
                ),
                SizedBox(height: 18.v),
                _buildSixteen(context),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: CustomTextFormField(
                    controller: descriptionController,
                    hintText:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    hintStyle: CustomTextStyles.bodySmallLight,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(15.h, 15.v, -24.h, 30.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgAutostories,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 211.v,
                    ),
                    maxLines: 9,
                    contentPadding: EdgeInsets.only(
                      top: 30.v,
                      right: 15.h,
                      bottom: 30.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    fillColor: appTheme.gray200,
                  ),
                ),
                SizedBox(height: 24.v),
                CustomImageView(
                  imagePath: ImageConstant.imgMenu,
                  height: 165.v,
                  width: 390.h,
                  margin: EdgeInsets.only(left: 1.h),
                ),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Checkout terakhirmu!",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 7.v),
                _buildEighteen(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        children: [
          SizedBox(
            width: 217.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 85.adaptSize,
                  width: 85.adaptSize,
                  radius: BorderRadius.circular(
                    42.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat Pagi ",
                        style: CustomTextStyles.titleLargeLight,
                      ),
                      Text(
                        "ivan!",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 31.adaptSize,
            width: 31.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 27.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSms,
            height: 31.adaptSize,
            width: 31.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 27.v,
              bottom: 27.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Tahukah Kamu? 🐟",
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Text(
              "see all",
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 7.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 101.adaptSize,
            width: 101.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pelet Si-Jago",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 1.v),
                Text(
                  "Rp45.000",
                  style: CustomTextStyles.titleLargeLightgreen400,
                ),
                SizedBox(height: 10.v),
                Text(
                  "12/01/2024",
                  style: CustomTextStyles.bodySmall11,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 50,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 29.v,
              bottom: 22.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAddShoppingCart,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 1.v),
                SizedBox(
                  width: 47.h,
                  child: Text(
                    "Tambah ke keranjang",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.07,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 49,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 30.v,
              bottom: 22.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShoppingCartCheckout,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(
                  width: 42.h,
                  child: Text(
                    "Checkout langsung",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.07,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
