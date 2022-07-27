import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class EnviromentAddDialog {
  Future<void> showEnviromentDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            backgroundColor: Colors.transparent,
            content: EnviromentAdd(),
            elevation: 24,
          );
        });
  }
}
