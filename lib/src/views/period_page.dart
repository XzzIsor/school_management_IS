import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class PeriodPage extends StatelessWidget {
  const PeriodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [BackgroundMain(), PeriodTable()],
      ),
    );
  }
}
