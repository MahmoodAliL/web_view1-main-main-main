import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_view/constants/assets_manager.dart';

class LibraryLogo extends StatelessWidget {
  const LibraryLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
           ImagaAssets.logoLibraryAttabaAbbasiya,
        height: 60,
        fit: BoxFit.fitHeight,
        
      ),
    );
  }
}
