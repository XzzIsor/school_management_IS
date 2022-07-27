import 'package:flutter/material.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
        height: _size.height * 0.6,
        width: _size.width * 0.4,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(245, 241, 203, 1),
              Color.fromRGBO(227, 253, 253, 1),
            ],
            begin: FractionalOffset(0.15, 0.6),
            end: FractionalOffset(0.3, 0.9),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: _size.height * 0.05,
            ),
            Center(
              child: Text(
                '¡Bienvenido!',
                style: TextStyle(
                  fontSize: _size.longestSide / _size.shortestSide * 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.05,
            ),
            Center(
              child: SizedBox(
                height: _size.height * 0.3,
                width: _size.width * 0.35,
                child: Image.asset(
                  'assets/img/Sena-Logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ));
  }
}
