import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/ui/pages/home/widgets/filtrs_list/filter_list_item.dart';
import 'package:maksafy/core/styles/r.dart';

class FiltersListWidget extends StatelessWidget {
  const FiltersListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///just for test
    List<FilterListItem> items = [
      FilterListItem(
        filterType: 'الكل',
        isAllSelected: true,
      ),
      FilterListItem(
        filterType: 'بيتزا',
        filterImagePath: R.drawables.filter,
      ),
      FilterListItem(
        filterType: 'بيتزا',
        filterImagePath: R.drawables.filter,
      ),
      FilterListItem(
        filterType: 'سندوتشات',
        filterImagePath: R.drawables.filter,
      ),
      FilterListItem(
        filterType: 'مشروبات',
        filterImagePath: R.drawables.filter,
      ),
      FilterListItem(
        filterType: 'مشروبات',
        filterImagePath: R.drawables.filter,
      ),
      FilterListItem(
        filterType: 'مشروبات',
        filterImagePath: R.drawables.filter,
      ),
    ];
    return Container(
      height: 50.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 7.h),
        itemBuilder: (_, index) {
          return items[index];
        },
      ),
    );
  }
}
