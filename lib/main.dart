import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:web_view/features/home/page.dart';
// import 'package:web_view/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_view/translations/codegen_loader.g.dart';
// import 'package:web_view/widgets/action_bar.dart';
// import 'package:web_view/widgets/webview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) =>

            //EasyLocalization
            EasyLocalization(
                path: 'assets/translations', // en.json and ar.json
                supportedLocales: const [
                  Locale('en'),
                  Locale('ar'),
                ],
                fallbackLocale: const Locale('ar'),
                //
                assetLoader: const CodegenLoader(), //class generate

                child: const App())),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('ar'), // English
      // ],
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      home: const Scaffold(
        body: SafeArea(child: Home()),
      ),
    );
  }
}

//flutter run -d chrome
//emulator-5554

//flutter run -d emulator-5554

// class is generate CodegenLoader() By ====> ( flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations")
// class   is generate  locale_keys.g.dart  =====>   flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys