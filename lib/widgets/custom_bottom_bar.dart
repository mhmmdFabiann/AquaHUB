import 'package:aquahub_10/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgShoppingCart,
      activeIcon: ImageConstant.imgShoppingCart,
      type: BottomBarEnum.Shoppingcart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgReceiptLong,
      activeIcon: ImageConstant.imgReceiptLong,
      type: BottomBarEnum.Receiptlong,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgEmojiPeople,
      activeIcon: ImageConstant.imgEmojiPeople,
      type: BottomBarEnum.Emojipeople,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.v,
      decoration: BoxDecoration(
        color: appTheme.gray900,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 30.adaptSize,
              width: 30.adaptSize,
              color: appTheme.gray100,
            ),
            activeIcon: SizedBox(
              height: 42.v,
              width: 60.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 42.v,
                      width: 60.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          15.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    color: appTheme.gray900,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 6.v,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Shoppingcart,
  Receiptlong,
  Emojipeople,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
