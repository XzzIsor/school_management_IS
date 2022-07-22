import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class PeriodAddDialog {
  Future<void> showLoginDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            backgroundColor: Colors.transparent,
            content: PeriodAdd(),
            elevation: 24,
          );
        });
  }
}
