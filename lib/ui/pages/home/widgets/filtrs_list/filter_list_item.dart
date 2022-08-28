import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/core/styles/r.dart';

class FilterListItem extends StatelessWidget {
   FilterListItem(
      {Key? key,
      this.isSelected = false,
      this.filterImagePath,
      required this.filterType,
      this.isAllSelected = false})
      : super(key: key);
   bool isSelected;
  final String filterType;
  final String? filterImagePath;
  final bool isAllSelected;

  @override
  Widget build(BuildContext context) {
    bool isItemSelected = isSelected || isAllSelected;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(
        color: isItemSelected ? R.colors.productColor : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          filterType,
          style: TextStyle(
            color: isItemSelected ? Colors.white : R.colors.filterItemTextColor,
          ),
        ),
        //check if is user select all filters or not
        if (!isAllSelected)
          SizedBox(
            width: 10.w,
          ),
        if (!isAllSelected)
          Image.asset(
            filterImagePath ?? R.drawables.filter,
          ),

        // SvgPicture.asset('s'),
      ]),
    );
  }
}
