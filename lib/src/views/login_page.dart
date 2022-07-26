import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shool_management/src/controllers/controllers.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserController _userController = UserController();
    _userController.getAllUsers();
    return Scaffold(
      body: Stack(
        children: const [BackgroundMain(), HomeDialog()],
      ),
    );
  }
}
