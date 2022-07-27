import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: NavigationButton(),
        body: Stack(
          children: const [BackgroundMain(), ScheduleBlock()],
        ));
  }
}
