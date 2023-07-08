import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extentions/custom_theme_extention.dart';
import 'package:whatsapp_clone/common/helper/show_alert_dailaog.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp_clone/common/widgets/custom_icon_button.dart';
import 'package:whatsapp_clone/feature/auth/widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? phoneController;
  TextEditingController? countryCodeController;
  TextEditingController? countryNameController;
  showCountryCodePiker() {
    showCountryPicker(
        countryListTheme: CountryListThemeData(
            bottomSheetHeight: 600,
            backgroundColor: Theme.of(context).backgroundColor,
            flagSize: 22,
            borderRadius: BorderRadius.circular(20),
            textStyle: TextStyle(color: context.theme.greyColor),
            inputDecoration: InputDecoration(
                labelStyle: TextStyle(color: context.theme.greyColor),
                prefixIcon: const Icon(
                  Icons.language,
                  color: Coloors.greenDark,
                ),
                hintText: 'Search country code or name',
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: context.theme.greyColor!.withOpacity(0.2))),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Coloors.greenDark)))),
        favorite: ['EG'],
        showPhoneCode: true,
        context: context,
        onSelect: (country) {
          countryNameController!.text = country.name;
          countryCodeController!.text = country.countryCode;
        });
  }

  sendCodeToPhone() {
    final phone = phoneController!.text;
    final name = countryNameController!.text;
    final code = countryCodeController!.text;
    if (phone.isEmpty) {
      return showAlertDialog(message: 'Pleas enter your phone number', context: context);
    }
  else if (phone.length < 9) {
      return showAlertDialog(
          message:
              'the phone number you entered is too short for the country : $name. \n \n Include your area code if you haven\'t ',
          context: context);
    }
    else if(phone.length>10){
      return showAlertDialog(
          message:
              'the phone number you entered is too long for the country : $name. \n \n Include your area code if you haven\'t ',
          context: context);
    }
  }

  @override
  void initState() {
    countryCodeController = TextEditingController(text: '20');
    countryNameController = TextEditingController(text: 'Egypt');
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryCodeController!.dispose();
    countryNameController!.dispose();
    phoneController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Enter Your Phone number',
          style: TextStyle(color: context.theme.authAppbarTextColor),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            iconColor: context.theme.greyColor,
            iconData: Icons.more_vert,
            iconSize: 22,
            minWidth: 40,
            onTap: () {},
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'WhatsApp will need to verify your phone number  ',
                style: TextStyle(color: context.theme.greyColor, height: 1.5),
                children: [
                  TextSpan(
                      text: "What's my number ",
                      style: TextStyle(color: context.theme.blueColor))
                ]),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: CustomTextField(
            onTap: showCountryCodePiker,
            readOnly: true,
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              color: Coloors.greenDark,
            ),
            textEditingController: countryNameController,
            fontSize: 22,
            // hintText:'Enter your Country name ' ,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              SizedBox(
                width: 70,
                child: CustomTextField(
                  onTap: showCountryCodePiker,
                  // onTap: showCountryPickerBottomSheet,
                  textEditingController: countryCodeController,
                  perfixText: '+',
                  readOnly: true,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomTextField(
                  textEditingController: phoneController,
                  hintText: 'phone number',
                  textAlign: TextAlign.left,
                  textInputType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Carrier charges may apply',
          style: TextStyle(
            color: context.theme.greyColor,
          ),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: sendCodeToPhone,
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
