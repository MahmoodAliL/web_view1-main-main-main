import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_view/constants/assets_manager.dart';

class WorkHoursPage extends StatelessWidget {
  const WorkHoursPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final currentLocale = context.locale;
    // final isArabic = currentLocale.languageCode == 'ar';

    // String imageName = isArabic ? 'arabic_image.png' : 'english_image.png';

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 16),
                    SvgPicture.asset(
                      ImagaAssets.workHoure,
                      semanticsLabel: 'Acme Logo',
                      height: 50,
                      fit: BoxFit.contain,
                      colorFilter:
                          const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "|",
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "اوقات الدوام",
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    // const Text(
                    //   "في مكتبة العتبة العباسية المقدسة",
                    //   textAlign: TextAlign.center,
                    // ),
                  ],
                ),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  ImagaAssets.day1,
                  semanticsLabel: 'Acme Logo',
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  ImagaAssets.day2,
                  semanticsLabel: 'Acme Logo',
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  ImagaAssets.day3,
                  semanticsLabel: 'Acme Logo',
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  ImagaAssets.day4,
                  semanticsLabel: 'Acme Logo',
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  ImagaAssets.day5,
                  semanticsLabel: 'Acme Logo',
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  ImagaAssets.day6,
                  semanticsLabel: 'Acme Logo',
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  ImagaAssets.day7,
                  semanticsLabel: 'Acme Logo',
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
