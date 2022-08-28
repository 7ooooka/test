import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/ui/pages/container/widgets/custom_bottom_bar_svg_icon.dart';
import 'package:maksafy/core/styles/r.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    this.onTabChanged,
  }) : super(key: key);

  final int selectedIndex;
  final void Function(int index)? onTabChanged;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: R.colors.bottomBarActiveIconColor,
      unselectedItemColor: R.colors.bottomBarInActiveIconColor,
      currentIndex: selectedIndex,
      selectedFontSize: 10.sp,
      unselectedFontSize: 10.sp,
      iconSize: 20.h,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: R.colors.bottomBarBgColor,
      onTap: onTabChanged,
      items: bottomBarItems(context),
    );
  }

  List<BottomNavigationBarItem> bottomBarItems(BuildContext context) => [
    BottomNavigationBarItem(
      backgroundColor: R.colors.bottomBarBgColor,
      icon: CustomBottomBarSvgIcon(
        margin: EdgeInsets.only(bottom: 10.h, top: 7.h),
        path: R.drawables.moreIcon,
        isActive: selectedIndex == 0,
      ),
      label: 'المزيد',
    ),

        BottomNavigationBarItem(
          backgroundColor: R.colors.bottomBarBgColor,
          icon: CustomBottomBarSvgIcon(
            path: R.drawables.ordersIcon,
            isActive: selectedIndex == 1,
          ),
          label: 'طلبات مسبقة',
        ),
    BottomNavigationBarItem(
        backgroundColor: R.colors.bottomBarBgColor,
        icon: CustomBottomBarSvgIcon(
          path: R.drawables.salesIcon,
          isActive: selectedIndex == 2,
        ),
        label: 'المبيعات'),
    BottomNavigationBarItem(
      backgroundColor: R.colors.bottomBarBgColor,
      icon: CustomBottomBarSvgIcon(
        path: R.drawables.walletIcon,
        isActive: selectedIndex == 3,
      ),
      label: 'المحفظة',
    ),
    BottomNavigationBarItem(
      backgroundColor: R.colors.bottomBarBgColor,
      icon: CustomBottomBarSvgIcon(
        path: R.drawables.homeIcon,
        isActive: selectedIndex == 4,
      ),
      label: 'الرئيسية',
    ),
      ];
}
