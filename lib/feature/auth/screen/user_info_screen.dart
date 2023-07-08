import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extentions/custom_theme_extention.dart';
import 'package:whatsapp_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_clone/feature/auth/widget/custom_text_field.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0.0,
          title: Text(
            "Profile info",
            style: TextStyle(color: context.theme.authAppbarTextColor),
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Pleas provide your name and  optional profile photo',
              style: TextStyle(color: context.theme.greyColor),
            ),
           const  SizedBox(height: 40,),
           Container(
            padding:const EdgeInsets.all(26),
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.theme.photoIconBgColor
           ),child:  Padding(
             padding: const EdgeInsets.only(bottom: 3,right: 3),
             child: Icon(Icons.add_a_photo_rounded,size: 48,color: context.theme.photoIconColor,),
           ) ,),
           const SizedBox(height: 40,),
            Row(
            children:  [
              const SizedBox(width: 20,),
             const Expanded(child: CustomTextField(
              hintText: "Type your name here",
              textAlign: TextAlign.left,
              autoFocus: true,


             )),
             const SizedBox(width: 10,),
              Icon(Icons.emoji_emotions_outlined,color: context.theme.photoIconColor,),
              const SizedBox(width: 20,)
            ],
           )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(onPressed: (){},text: 'NEXT',buttonWidth: 90,),
    );
  }
}
