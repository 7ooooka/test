import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maksafy/core/styles/r.dart';
import 'package:maksafy/ui/pages/home/widgets/home_header/app_header.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: R.colors.homeBackgroundColor,
        child: Column(children: [
          const AppHeader(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(7.r),
                      ),
                    ),
                    child: TextFormField(
                      decoration: R.style.darkTextFieldDecoration.copyWith(
                        suffixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: R.colors.searchIconColor,
                        ),
                        hintText: 'اسم الطالب',
                      ),
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: R.colors.searchInputTextColor,
                            fontSize: 16.sp,
                          ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Container(
                  width: 56.w,
                  height: 56.h,
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: R.colors.searchContainerColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                  ),
                  child: SvgPicture.asset(R.drawables.search,
                      color: Colors.white, fit: BoxFit.scaleDown),
                ),
                Container(
                  width: 56.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    color: R.colors.registerContainerColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.r),
                    ),
                  ),
                  child: SvgPicture.asset(R.drawables.register,
                      color: Colors.white, fit: BoxFit.scaleDown),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
