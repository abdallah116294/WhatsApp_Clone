import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extentions/custom_theme_extention.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? textInputType;
  final String? perfixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
   final double? fontSize;
  final bool? autoFocus;
  
  const CustomTextField(
      {super.key,
       this.textEditingController,
      this.hintText,
      this.readOnly,
      this.textAlign,
       this.textInputType,
      this.perfixText,
      this.onTap,
      this.suffixIcon,
      this.onChanged, this.fontSize, this.autoFocus});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: textEditingController,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: textInputType,
      onChanged: onChanged,
      style: TextStyle(fontSize: fontSize),
      autofocus: autoFocus ?? false,
      decoration: InputDecoration(
        isDense: true,
        prefixText: perfixText,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: context.theme.greyColor),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Coloors.greenDark,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Coloors.greenDark,
            width: 2,
          ),
        ),
      ),
    );
  }
}
