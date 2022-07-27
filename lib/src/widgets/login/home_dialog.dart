import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/login/home_info.dart';
import 'package:shool_management/src/widgets/login/login_form.dart';

class HomeDialog extends StatelessWidget {
  const HomeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _sizeR = _size.longestSide / _size.shortestSide;

    return Center(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: _sizeR * 8,
                spreadRadius: _sizeR * 4,
              ),
            ],
          ),
          height: _size.height * 0.6,
          width: _size.width * 0.65,
          child: Row(
            children: const [HomeInfo(), LoginForm()],
          )),
    );
  }
}
