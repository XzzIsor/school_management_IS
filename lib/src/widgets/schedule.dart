import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _sizeResponsive = _size.longestSide / _size.shortestSide;
    List<Widget> _rowDays = [
      _scheduleBox('Horarios/Dias', _size),
      _scheduleBox('Lunes', _size),
      _scheduleBox('Martes', _size),
      _scheduleBox('Miércoles', _size),
      _scheduleBox('Jueves', _size),
      _scheduleBox('Viernes', _size),
      _scheduleBox('Sábado', _size)
    ];
    List<Widget> _7AMRow = [
      _scheduleBox('7 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _8AMRow = [
      _scheduleBox('8 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _9AMRow = [
      _scheduleBox('9 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _10AMRow = [
      _scheduleBox('10 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _11AMRow = [
      _scheduleBox('11 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _12PMRow = [
      _scheduleBox('12 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _1PMRow = [
      _scheduleBox('1 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _2PMRow = [
      _scheduleBox('2 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _3PMRow = [
      _scheduleBox('3 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _4PMRow = [
      _scheduleBox('4 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _5PMRow = [
      _scheduleBox('5 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _6PMRow = [
      _scheduleBox('6 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _7PMRow = [
      _scheduleBox('7 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _8PMRow = [
      _scheduleBox('8 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _9PMRow = [
      _scheduleBox('9 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _10PMRow = [
      _scheduleBox('10 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];

    return SizedBox(
      height: _size.height * 0.6,
      width: _size.width * 0.7,
      child: Table(
        children: [
          TableRow(children: _rowDays),
          TableRow(children: _7AMRow),
          TableRow(children: _8AMRow),
          TableRow(children: _9AMRow),
          TableRow(children: _10AMRow),
          TableRow(children: _11AMRow),
          TableRow(children: _12PMRow),
          TableRow(children: _1PMRow),
          TableRow(children: _2PMRow),
          TableRow(children: _3PMRow),
          TableRow(children: _4PMRow),
          TableRow(children: _5PMRow),
          TableRow(children: _6PMRow),
          TableRow(children: _7PMRow),
          TableRow(children: _8PMRow),
          TableRow(children: _9PMRow),
          TableRow(children: _10PMRow),
        ],
      ),
    );
  }

  Widget _scheduleBox(String text, Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.height * 0.0005, vertical: size.height * 0.0005),
      child: Container(
        height: size.height * 0.02,
        width: size.width * 0.05,
        decoration: const BoxDecoration(color: Colors.black),
        child: Center(
          child: Text(
            text,
            style:
                TextStyle(color: Colors.white, fontSize: size.height * 0.016),
          ),
        ),
      ),
    );
  }
}
