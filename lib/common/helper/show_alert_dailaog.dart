import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extentions/custom_theme_extention.dart';

showAlertDialog(
    {required BuildContext context,
    required String message,
     String? btnmesage}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            message,
            style: TextStyle(color: context.theme.greyColor),
          ),
          contentPadding:const EdgeInsets.fromLTRB(20, 20, 20, 0),
          actions: [
            TextButton(onPressed: (){}, child: Text(btnmesage??"Ok",style: TextStyle(color: context.theme.circleImageColor),))
          ],
        );
      });
}
