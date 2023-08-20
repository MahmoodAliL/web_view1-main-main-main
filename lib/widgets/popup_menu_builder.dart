
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_view/constants/dimen.dart';



          //=====قائمة الاختيارت
         /////حول -about
         ///مشاركة التطبيق -share
         ///سياسة الخصوصية - privacy_tip
class MenuItem<T> {
  MenuItem({required this.value, required this.title, required this.icon});

  final T value;
  final String title;
  final IconData icon;
}

class PopupMenuItemsBuilder {
  static List<PopupMenuItem<T>> build<T>({
    required List<MenuItem<T>> menuItems,
  }) {
    return List.generate(menuItems.length, (index) {
      final menu = menuItems[index];
      return _buildPopupMenuItem(
        value: menu.value,
        title: menu.title,
        icon: menu.icon,
      );
    });
  }

  static PopupMenuItem<T> _buildPopupMenuItem<T>({
    required T value,
    required String title,
    required IconData icon,
  }) {
    return PopupMenuItem<T>(
      value: value,
      child: Row(
        children: [
          Icon(icon, color: Colors.black54),
          const SizedBox(width: AppDimens.defaultPadding),
          Text(title, style: Get.textTheme.subtitle1),
        ],
      ),
    );
  }
}
