import 'package:flutter/material.dart';
import 'package:web_view/features/home/widgets/about_button.dart';
import 'package:web_view/features/home/widgets/change_lang_button.dart';
import 'package:web_view/features/home/widgets/working_hours_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChangeLangButton(),
            AboutButton(),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: WorkingHoursButton(),
        ),
      ],
    );
  }
}
