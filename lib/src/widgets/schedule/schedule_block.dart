import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class ScheduleBlock extends StatelessWidget {
  const ScheduleBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return ListView(children: [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: _size.width * 0.08, vertical: _size.height * 0.08),
        child: const Schedule(),
      ),
      const ScheduleManagement()
    ]);
  }
}
