import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maksafy/core/styles/r.dart';

class CustomBottomBarSvgIcon extends StatelessWidget {
  const CustomBottomBarSvgIcon({
    Key? key,
    required this.path,
    this.isActive = false,
    this.margin
  }) : super(key: key);

  final String path;
  final bool isActive;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin?? EdgeInsets.only(bottom: 5.h),
      child: SvgPicture.asset(
        path,
        color: isActive
            ? R.colors.bottomBarActiveIconColor
            : R.colors.bottomBarInActiveIconColor,
      ),
    );
  }
}
