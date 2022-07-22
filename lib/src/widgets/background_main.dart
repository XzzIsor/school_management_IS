import 'package:flutter/material.dart';
import 'dart:math';

class BackgroundMain extends StatelessWidget {
  const BackgroundMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        boxWithGrandient(),
        smallCircleWithGrandient(),
        smallCircleWithGrandient1(),
        smallCircleWithGrandient2(),
        smallCircleWithGrandient3(),
        smallCircleWithGrandient4(),
        smallCircleWithGrandient5(),
        smallCircleWithGrandient6(),
        smallCircleWithGrandient7()
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

  Widget smallCircleWithGrandient() {
    Widget smallBox = Container(
        width: 360,
        height: 360,
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
        top: 150,
        left: 80,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient1() {
    Widget smallBox = Container(
        width: 200,
        height: 200,
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
        top: 100,
        right: 300,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient2() {
    Widget smallBox = Container(
        width: 150,
        height: 150,
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
        top: 450,
        right: 750,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient3() {
    Widget smallBox = Container(
        width: 80,
        height: 80,
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
        bottom: 300,
        right: 140,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient4() {
    Widget smallBox = Container(
        width: 100,
        height: 100,
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
        bottom: 150,
        left: 80,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient5() {
    Widget smallBox = Container(
        width: 120,
        height: 120,
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
        top: 300,
        left: 650,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient6() {
    Widget smallBox = Container(
        width: 250,
        height: 250,
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
        bottom: 100,
        right: 350,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }

  Widget smallCircleWithGrandient7() {
    Widget smallBox = Container(
        width: 135,
        height: 135,
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
        bottom: 250,
        left: 450,
        child: Transform.rotate(
          angle: -pi / 4.0,
          child: smallBox,
        ));
  }
}
