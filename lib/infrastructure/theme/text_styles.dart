
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';



class TextStyles {
  TextStyles._();
  static TextStyle fontW700(int fontSize) {
    return  GoogleFonts.roboto(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w700,
        color:AppColor.mainAppColor
    );
  }
  static TextStyle fontWGray700(int fontSize) {
    return  GoogleFonts.roboto(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w700,
        color:Colors.grey
    );
  }
  static TextStyle fontWRed700(int fontSize) {
    return  GoogleFonts.roboto(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w700,
        color:Colors.redAccent
    );
  }
  static TextStyle fontWYellow700(int fontSize) {
    return  GoogleFonts.roboto(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w700,
        color:Colors.orange
    );
  }
}
