import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [BackgroundMain(), LoginForm()],
      ),
    );
  }
}
