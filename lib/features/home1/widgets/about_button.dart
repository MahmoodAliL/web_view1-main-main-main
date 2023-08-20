import 'package:flutter/material.dart';
import 'package:web_view/features/about/abuot.dart';

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
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(18),
      ))),
      child: const Text('حول'),
    );
  }
}
