import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/common/extentions/custom_theme_extention.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

ThemeData LightTheme() {

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: Coloors.backgroudLight,
   //colorScheme: ColorScheme(background: ),
   extensions: [
    CustomThemeExtention.lightMode,
   ],
    appBarTheme: const AppBarTheme(systemOverlayStyle:SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light
   ) 
   ),
    scaffoldBackgroundColor: Coloors.backgroudLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
                  backgroundColor: Coloors.greenLight,
            foregroundColor: Coloors.backgroudLight,
            splashFactory: NoSplash.splashFactory,
            elevation: 0,
            shadowColor: Colors.transparent,
      )
    ),
        bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Coloors.backgroudLight,
      modalBackgroundColor: Coloors.backgroudLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)
        )
      )
    )
  );
}