import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

extension ExtendedThem on BuildContext {
  CustomThemeExtention get theme {
    return Theme.of(this).extension<CustomThemeExtention>()!;
  }
}

class CustomThemeExtention extends ThemeExtension<CustomThemeExtention> {
  static const lightMode = CustomThemeExtention(
      circleImageColor: Color(0xFF25D366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      langBtnColor: Color(0xfff7f8fa),
      langBtnHighlightColor: Color(0xffE8E8ED),
      authAppbarTextColor: Coloors.greenLight,
      photoIconBgColor: Color(0xFFF0F2F3),
      photoIconColor: Color(0xFF9DAAB3),

      );
  static const darkMode = CustomThemeExtention(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnColor: Color(0xff182229),
      langBtnHighlightColor: Color(0xff09141A),
      authAppbarTextColor: Color(0xffE9EDEF),
      photoIconBgColor: Color(0xFF283339),
      photoIconColor: Color(0xFF61717B),

      );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnColor;
  final Color? langBtnHighlightColor;
  final Color? authAppbarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;

  const CustomThemeExtention(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langBtnColor,
      this.langBtnHighlightColor,
      this.authAppbarTextColor,
      this.photoIconBgColor,
      this.photoIconColor,
      });
  @override
  ThemeExtension<CustomThemeExtention> copyWith(
      {Color? circleImageColor,
      Color? greyColor,
      Color? blueColor,
      Color? langBtnColor,
      Color? langBtnHighlightColor,
      Color? authAppbarTextColor,
      Color? photoIconBgColor,
      Color? photoIconColor
      }) {
    return CustomThemeExtention(
        circleImageColor: circleImageColor ?? this.circleImageColor,
        greyColor: greyColor ?? this.greyColor,
        blueColor: blueColor ?? this.blueColor,
        langBtnColor: langBtnColor ?? this.langBtnColor,
        langBtnHighlightColor:
            langBtnHighlightColor ?? this.langBtnHighlightColor,
        authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
         photoIconBgColor: photoIconBgColor??this.photoIconBgColor,
         photoIconColor: photoIconColor?? this.photoIconColor,
         );
        
  }

  @override
  ThemeExtension<CustomThemeExtention> lerp(
      covariant ThemeExtension<CustomThemeExtention>? other, double t) {
    if (other is! CustomThemeExtention) return this;
    return CustomThemeExtention(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnColor: Color.lerp(langBtnColor, other.langBtnColor, t),
      langBtnHighlightColor:
          Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
          photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
          photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t)
    );
  }
}
