import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_view/constants/assets_manager.dart';

class AbuotPage extends StatelessWidget {
  const AbuotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            // FittedBox(
            //   child: Container(
            //     height: MediaQuery.of(context).size.height * 0.40,
            //     width: MediaQuery.of(context).size.width,
            //     padding: const EdgeInsets.all(16),
            //     // height: 320,
            //     decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage(
            //               ImagaAssets.abuotCat,
            //             ),
            //             fit: BoxFit.cover)),
            //   ),
            // ),
            const SizedBox(height: 16),
            SvgPicture.asset(
              // 'assets/logoatba.svg',
              ImagaAssets.abuotBackgruond,
              semanticsLabel: 'Acme Logo',
              height: 320,
              fit: BoxFit.cover,
              // colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
            ),

            const SizedBox(height: 16),
            SvgPicture.asset(
              // 'assets/logoatba.svg',
              ImagaAssets.logoLibrary,
              semanticsLabel: 'Acme Logo',
              height: 60,
              fit: BoxFit.contain,
              // colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
            ),
            const SizedBox(height: 16),
            SvgPicture.asset(
              ImagaAssets.logoLibraryAttabaAbbasiya,
              semanticsLabel: 'Acme Logo',
              height: 60,
              fit: BoxFit.contain,
              colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
            ),
            // const SizedBox(height: 5),
            const Text(
              "Library of Al - Abbas Holy Shrine",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                  "وكان زمن التأسيس يعود الى 1382 هـ حيث حوت انذاك على كتب  ومصادر مهمة تربو على الخمسة الالف وكانت تضم بين دفتها مخطوطات يصل تعدادها الى حدود الالف مخطوطة وقد صودرت هذه النفائس الخطيةمن قبل عصابة البعث المقبور"),
            )
          ],
        ),
      ),
    );
  }
}
