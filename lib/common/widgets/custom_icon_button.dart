import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extentions/custom_theme_extention.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? iconData;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;
  const CustomIconButton({
    super.key,
    this.onTap,
    this.iconData,
    this.iconColor,
    this.iconSize, this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        splashColor: Colors.transparent,
        splashRadius: 22,
        iconSize: iconSize??22,
        padding: EdgeInsets.zero,
        constraints:  BoxConstraints(minWidth: minWidth??40),
        onPressed: onTap,
        icon: Icon(
          iconData,
          color: iconColor??context.theme.greyColor,
        ));
  }
}