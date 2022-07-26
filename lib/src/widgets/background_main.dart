import 'package:flutter/material.dart';
import 'dart:math';

class BackgroundMain extends StatelessWidget {
  const BackgroundMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double size = _size.longestSide / _size.shortestSide;
    return Stack(
      children: [
        boxWithGrandient(),
        smallCircleWithGrandient(size, _size),
        smallCircleWithGrandient1(size, _size),
        smallCircleWithGrandient2(size, _size),
        smallCircleWithGrandient3(size, _size),
        smallCircleWithGrandient4(size, _size),
        smallCircleWithGrandient5(size, _size),
        smallCircleWithGrandient6(size, _size),
        smallCircleWithGrandient7(size, _size)
      ],
    );
  }

  Widget boxWithGrandient() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(44, 51, 51, 1),
            Color.fromRGBO(57, 97, 100, 1),
          ],
          begin: FractionalOffset(0.6, 0.8),
          end: FractionalOffset(0, 1),
        ),
      ),
    );
  }

  Widget smallCircleWithGrandient(double size, Size position) {
    Widget smallBox = Container(
        width: size * 100,
        height: size * 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(165, 201, 202, 1),
              Color.fromRGBO(231, 246, 242, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ));

    return Positioned(
        top: position.height * 0.1,
        left: position.width * 0.05,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient1(double size, Size position) {
    Widget smallBox = Container(
        width: size * 140,
        height: size * 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(165, 201, 202, 1),
              Color.fromRGBO(231, 246, 242, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ));

    return Positioned(
        top: position.height * 0.08,
        right: position.height * 0.3,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient2(double size, Size position) {
    Widget smallBox = Container(
        width: size * 60,
        height: size * 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(165, 201, 202, 1),
              Color.fromRGBO(231, 246, 242, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ));

    return Positioned(
        top: position.height * 0.25,
        right: position.width * 0.45,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient3(double size, Size position) {
    Widget smallBox = Container(
        width: size * 70,
        height: size * 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(165, 201, 202, 1),
              Color.fromRGBO(231, 246, 242, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ));

    return Positioned(
        bottom: position.height * 0.25,
        right: position.width * 0.05,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient4(double size, Size position) {
    Widget smallBox = Container(
        width: size * 45,
        height: size * 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(165, 201, 202, 1),
              Color.fromRGBO(231, 246, 242, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ));

    return Positioned(
        bottom: position.height * 0.2,
        left: position.width * 0.04,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient5(double size, Size position) {
    Widget smallBox = Container(
        width: size * 55,
        height: size * 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(165, 201, 202, 1),
              Color.fromRGBO(231, 246, 242, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ));

    return Positioned(
        top: position.height * 0.1,
        left: position.width * 0.3,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient6(double size, Size position) {
    Widget smallBox = Container(
        width: size * 60,
        height: size * 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(165, 201, 202, 1),
              Color.fromRGBO(231, 246, 242, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ));

    return Positioned(
        bottom: position.height * 0.15,
        right: position.width * 0.3,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient7(double size, Size position) {
    Widget smallBox = Container(
        width: size * 47,
        height: size * 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(165, 201, 202, 1),
              Color.fromRGBO(231, 246, 242, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ));

    return Positioned(
        bottom: position.height * 0.3,
        left: position.width * 0.27,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }
}
