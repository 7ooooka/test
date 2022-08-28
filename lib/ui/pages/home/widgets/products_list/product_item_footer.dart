import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/core/styles/r.dart';

class ProductItemFooter extends StatelessWidget {
  const ProductItemFooter({
    Key? key,
    required this.productPrice,
  }) : super(key: key);
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(R.drawables.addItem),
          SizedBox(
            width: 30.w,
          ),
          Text(
            productPrice,
            style: TextStyle(
              color: R.colors.productColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
