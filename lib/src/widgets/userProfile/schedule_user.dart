import 'package:flutter/material.dart';

class ScheduleUser extends StatefulWidget {
  const ScheduleUser({Key? key}) : super(key: key);

  @override
  State<ScheduleUser> createState() => _ScheduleUserState();
}

class _ScheduleUserState extends State<ScheduleUser> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    List<Widget> _rowDays = [
      _scheduleBox('Horarios/Dias', _size),
      _scheduleBox('Lunes', _size),
      _scheduleBox('Martes', _size),
      _scheduleBox('Miércoles', _size),
      _scheduleBox('Jueves', _size),
      _scheduleBox('Viernes', _size),
      _scheduleBox('Sábado', _size)
    ];
    List<Widget> _7Row = [
      _scheduleBox('7 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _8Row = [
      _scheduleBox('8 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _9Row = [
      _scheduleBox('9 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _10Row = [
      _scheduleBox('10 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _11Row = [
      _scheduleBox('11 AM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _12Row = [
      _scheduleBox('12 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _13Row = [
      _scheduleBox('1 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _14Row = [
      _scheduleBox('2 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _15Row = [
      _scheduleBox('3 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _16Row = [
      _scheduleBox('4 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _17Row = [
      _scheduleBox('5 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _18Row = [
      _scheduleBox('6 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _19Row = [
      _scheduleBox('7 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _20Row = [
      _scheduleBox('8 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _21Row = [
      _scheduleBox('9 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];
    List<Widget> _22Row = [
      _scheduleBox('10 PM', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size),
      _scheduleBox('', _size)
    ];

    return SizedBox(
      width: _size.width * 0.7,
      child: Table(
        border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(children: _rowDays),
          TableRow(children: _7Row),
          TableRow(children: _8Row),
          TableRow(children: _9Row),
          TableRow(children: _10Row),
          TableRow(children: _11Row),
          TableRow(children: _12Row),
          TableRow(children: _13Row),
          TableRow(children: _14Row),
          TableRow(children: _15Row),
          TableRow(children: _16Row),
          TableRow(children: _17Row),
          TableRow(children: _18Row),
          TableRow(children: _19Row),
          TableRow(children: _20Row),
          TableRow(children: _21Row),
          TableRow(children: _22Row),
        ],
      ),
    );
  }

  Widget _scheduleBox(String text, Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.height * 0.0005, vertical: size.height * 0.0005),
      child: Container(
        height: size.height * 0.025,
        width: size.width * 0.05,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 177, 168, 168)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.black,
                fontSize: size.longestSide / size.shortestSide * 6),
          ),
        ),
      ),
    );
  }
}
