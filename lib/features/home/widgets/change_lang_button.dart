import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangeLangButton extends StatelessWidget {
  const ChangeLangButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Material(
          color: Colors.transparent,
          child: PopupMenuButton<int>(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'العربية',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(width: 6),
                ],
              ),
            ),
            // onSelected: (item) => handleClick(item),
            onSelected: (locale) {
              if (locale == 0) {
                context.setLocale(const Locale('ar', 'SA'));
              } else {
                context.setLocale(const Locale('en', 'US'));
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem<int>(value: 0, child: Text('العربية')),
              const PopupMenuItem<int>(value: 1, child: Text('English')),
            ],
          ),
        ),
      ),
    );
  }
}
