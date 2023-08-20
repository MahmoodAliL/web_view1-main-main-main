
import 'package:flutter/material.dart' ;

// import 'package:url_launcher/url_launcher.dart';
import 'package:web_view/constants/dimen.dart';
import 'package:web_view/widgets/popup_menu_builder.dart';

enum _MenuOptions { about, share, privacyPolicy }  ///اختارات القائمة

class HomeActionBar extends StatelessWidget {
  const HomeActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //البحث 
        // IconButton(
        //   onPressed: () {
        //     showSearch(
        //       context: context,
        //       delegate: PersonSearchDelegate(hintText: LocaleKeys.search.tr()),
        //     );
        //   },
        //   icon: const Icon(Icons.search),
        // ),
        //// ///
        ///
        //// نسخ احتياطية
        // IconButton(
        //   onPressed: () {
        //     GoRouter.of(context).goNamed(backupRouterName);
        //     //Get.toNamed<dynamic>(AppRoutes.backup);
        //   },
        //   icon: const Icon(Icons.backup),
        // ),
         ///////
         ///
         //=====قائمة الاختيارت
         /////حول -about
         ///مشاركة التطبيق -share
         ///سياسة الخصوصية - privacy_tip
        PopupMenuButton(
          shape: AppDimens.defaultAppBarActionsShape,
                   //popup_menu_builder.dart(PopupMenuItemsBuilder) in folder (utils) in folder (widgets)
          itemBuilder: (_) => PopupMenuItemsBuilder.build<_MenuOptions>(
            menuItems: [
              MenuItem(
                value: _MenuOptions.about,
                title: "حول",
                // LocaleKeys.about.tr()
                icon: Icons.info,
              ),
              MenuItem(
                value: _MenuOptions.share,
                title: "مشاركة",
                // LocaleKeys.shareApp.tr()
                icon: Icons.share,
              ),
              MenuItem(
                value: _MenuOptions.privacyPolicy,
                title: "سياسة التطبيق",
                // LocaleKeys.privacyPolicy.tr()
                icon: Icons.privacy_tip,
              ),
            ],
          ),
          onSelected: (_MenuOptions value) {
            switch (value) {
              case _MenuOptions.about:
                // GoRouter.of(context).goNamed(aboutRouterName);
                break;
              case _MenuOptions.share:
                _shareApp();
                break;
              case _MenuOptions.privacyPolicy:
                _privacyPolicy();
                break;
            }
          },
          child: const Text("حول"),
        ),
      ],
    );
  }

  void _shareApp() {
    // Share.share(
    //   'https://play.google.com/store/apps/details?id=com.teaml.debt_record',
    //   subject: AppStrings.shareAppSubject,
    // );
  }

  void _privacyPolicy() {
    // launchUrl(Uri.parse(AppConstant.kPrivacyPolicyUrl));
  }
}
