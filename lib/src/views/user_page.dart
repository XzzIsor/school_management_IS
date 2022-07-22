import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    ListView _profile = ListView(
      children: [
        const Center(child: UserInfo()),
        SizedBox(height: _size.height * 0.05),
        const Center(child: Schedule())
      ],
    );

    return Scaffold(
      body: Stack(
        children: [const BackgroundMain(), _profile],
      ),
    );
  }
}
