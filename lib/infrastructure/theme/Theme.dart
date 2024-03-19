import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class Themes{
  Themes._();
   static ThemeData lightTheme = ThemeData(
     textTheme: GoogleFonts.robotoTextTheme(),
     colorScheme: ColorScheme.fromSeed(
         seedColor: Colors.grey,
         inversePrimary: AppColor.inversePrimaryColor),
     useMaterial3: true,
   );
}