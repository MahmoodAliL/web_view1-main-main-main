import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_view/features/home/widgets/app_bar.dart';
import 'package:web_view/features/home/widgets/library_logo.dart';
import 'package:web_view/features/home/widgets/search.dart';
import 'package:web_view/features/home/widgets/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const LibraryLogo(),
          const SizedBox(height: 20),
          const Search(),
          const SizedBox(height: 20),
          Expanded(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                SvgPicture.asset(
                  'assets/svg/bottom_background.svg',
                  fit: BoxFit.fill,
                ),
                const Services(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
