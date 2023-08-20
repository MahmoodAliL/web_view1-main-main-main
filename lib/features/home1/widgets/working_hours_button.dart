import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_view/constants/assets_manager.dart';
import 'package:web_view/features/working_hours/work_hours.dart';

class WorkingHoursButton extends StatelessWidget {
  const WorkingHoursButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(backgroundColor: Colors.white),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WorkHoursPage()),
        );
      },
      child: SvgPicture.asset(
        ImagaAssets.workHoure,
        fit: BoxFit.contain,
        width: 30,
      ),
    );
  }
}
