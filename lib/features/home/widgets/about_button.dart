import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_view/features/about/abuot.dart';
import 'package:web_view/translations/locale_keys.g.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AbuotPage()),
        );
      },
      style: FilledButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
          ))),
      child: Text(LocaleKeys.abuot.tr()),
    );
  }
}
