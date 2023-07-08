import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extentions/custom_theme_extention.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });
  showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4,
                  width: 30,
                  decoration: BoxDecoration(
                      color: context.theme.greyColor,
                      borderRadius: BorderRadius.circular(5)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                      splashColor: Colors.transparent,
                      splashRadius: 22,
                      iconSize: 22,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(minWidth: 40),
                      onPressed: () =>Navigator.of(context).pop(),
                      icon: const Icon(Icons.close_outlined),
                      color: Coloors.greyDark,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'App Language ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: context.theme.greyColor!.withOpacity(0.3),
                  thickness: .5,
                ),
                RadioListTile(
                  value: true,
                  groupValue: true,
                  onChanged: (value) {},
                  activeColor: Coloors.greenDark,
                  title: const Text("English"),
                  subtitle: Text(
                    "(phone's language)",
                    style: TextStyle(color: context.theme.greyColor),
                  ),
                ),
                 RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (value) {},
                  activeColor: Coloors.greenDark,
                  title: const Text("አማርኛ"),
                  subtitle: Text(
                    "(Amharic)",
                    style: TextStyle(color: context.theme.greyColor),
                  ),
                ),
                 RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (value) {},
                  activeColor: Coloors.greenDark,
                  title: const Text("اللغة العربية "),
                  subtitle: Text(
                    "(arabic)",
                    style: TextStyle(color: context.theme.greyColor),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        highlightColor: context.theme.langBtnHighlightColor,
        splashFactory: NoSplash.splashFactory,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(
              Icons.language,
              color: Coloors.greenDark,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'English',
              style: TextStyle(color: Coloors.greenDark),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Coloors.greenDark,
            )
          ]),
        ),
      ),
    );
  }
}
