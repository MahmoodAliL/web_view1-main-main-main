// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:web_view/constants/assets_manager.dart';
// import 'package:web_view/features/home/widgets/about_button.dart';
// import 'package:web_view/features/home/widgets/working_hours_button.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 28,
//           elevation: 0,
//           backgroundColor: Colors.white,
//           title: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [WorkingHoursButton()],
//           ),
//           centerTitle: true,
//           actions: [
//             AboutButton(
//               key: key,
//             ),
//             // const Center(child: WorkingHoursButton())
//           ],
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(32),
//           children: [
//             const SizedBox(height: 16),
//             SvgPicture.asset(
//               // 'assets/logoatba.svg',
//               ImagaAssets.logoLibraryAttabaAbbasiya,
//               semanticsLabel: 'Acme Logo',
//               height: 100,
//               fit: BoxFit.contain,
//               colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn),
//             ),

//             //        Container(
//             //         height: 200,
//             //         width: double.infinity,
//             //         decoration: const BoxDecoration(
//             //         image: DecorationImage(
//             //          image:  SvgPicture.asset('assets/example.svg'),
//             //           fit: BoxFit.cover),
//             //   ),
//             //        child: Text('data'),// Foreground widget here
//             //  ),
//           ],
//         ));
//   }
// }
