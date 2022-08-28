import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/core/styles/r.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 10.w),
      height: 70.h,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: R.colors.headerBorderColor),
        ),
        color: R.colors.homeBackgroundColor,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
          child: Center(
            child: Image.asset(
              R.drawables.appNameImage,
              color: Colors.white,
            ),
          ),
        ),
        const Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      ]),
    );
  }
}
