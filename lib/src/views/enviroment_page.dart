import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class EnviromentPage extends StatelessWidget {
  const EnviromentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const NavigationButton(),
      body: Stack(
        children: const [BackgroundMain(), EnviromentTable()],
      ),
    );
  }
}
