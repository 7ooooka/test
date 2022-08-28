import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maksafy/core/styles/r.dart';

class Style {
  static final darkDefaultBorderSide = BorderSide(
    color: R.colors.textFieldDarkDefaultBorderColors,
  );
  static final defaultBorderSide = BorderSide(
    color: R.colors.textFieldDefaultBorderColors,
  );
  static final darkTextFieldEnabledBorders = OutlineInputBorder(
    borderSide: defaultBorderSide.copyWith(
      width: 1,
      color: R.colors.searchIconColor,
    ),
    borderRadius: BorderRadius.circular(4.r),
  );

  static final darkTextFieldFocusedBorder = OutlineInputBorder(
    borderSide: defaultBorderSide.copyWith(
      color: R.colors.searchIconColor,
    ),
    borderRadius: BorderRadius.circular(4.r),
  );
  static final darkHintStyle =
  MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
    return TextStyle(
      fontSize: 12.sp,
      color: R.colors.searchHintColor,
    );
  });
  static final darkTextFieldBorder = OutlineInputBorder(
    borderSide: darkDefaultBorderSide,
    borderRadius: BorderRadius.circular(4.r),
  );
  final darkTextFieldDecoration = InputDecoration(
      constraints: BoxConstraints(
        minHeight: 47.h,
      ),
      fillColor: Colors.white,
      enabledBorder: darkTextFieldEnabledBorders,
      errorMaxLines: 10,
      border: darkTextFieldBorder,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 17.h,
      ),
      hintStyle: darkHintStyle,
      focusedBorder: darkTextFieldFocusedBorder,);
}
