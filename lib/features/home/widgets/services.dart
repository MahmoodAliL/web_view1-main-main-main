import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_view/translations/locale_keys.g.dart';
import 'package:web_view/web_view_page.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Center(
        child: ListView(shrinkWrap: true, children: [
          Column(
            children: [
              Text(
                LocaleKeys.serviceslibrary.tr(), // خدمات المكتبة
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 24),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WebViewPage(
                            url: 'https://library.alkafeel.net/dic/elending/')),
                  );
                },
                child: SvgPicture.asset(
                  'assets/svg/elending.svg',
                  height: 50,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WebViewPage(
                            url:
                                'https://library.alkafeel.net/dic/plagiarism/')),
                  );
                },
                child: SvgPicture.asset(
                  height: 50,
                  'assets/svg/plagiarism_detection.svg',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WebViewPage(
                            url: 'https://library.alkafeel.net/dic/dedicate/')),
                  );
                },
                child: SvgPicture.asset(
                  height: 50,
                  'assets/svg/dedicate_digital.svg',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {},
                child: Text(
                  'library@alkafeel.net',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
