import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maksafy/core/styles/r.dart';

class ProductItemHeader extends StatelessWidget {
  const ProductItemHeader({Key? key, required this.productCalories})
      : super(key: key);
  final String productCalories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            R.drawables.productInfo,
            color: R.colors.productColor.withOpacity(.5),
          ),
          Container(
            color: R.colors.productColor.withOpacity(.2),
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productCalories,
                  style: TextStyle(color: R.colors.productColor),
                ),
                SizedBox(
                  width: 5.w,
                ),
                SvgPicture.asset(
                  R.drawables.productHeader,
                  color: R.colors.productColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
