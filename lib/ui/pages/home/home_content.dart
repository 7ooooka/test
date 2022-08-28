import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/core/styles/r.dart';
import 'package:maksafy/ui/pages/home/widgets/index.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: R.colors.homeContentColor,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
       child: Column(children: const [
         FiltersListWidget(),
         ProductsListWidget()
       ]),
    );
  }
}
