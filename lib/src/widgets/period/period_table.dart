import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class PeriodTable extends StatefulWidget {
  const PeriodTable({Key? key}) : super(key: key);

  @override
  State<PeriodTable> createState() => _PeriodTableState();
}

class _PeriodTableState extends State<PeriodTable> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
          BoxShadow(
              color: Colors.black45,
              blurRadius: _size.width / _size.height * 12,
              offset: const Offset(-2, 0))
        ]),
        height: _size.height * 0.7,
        width: _size.width * 0.8,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(_size.height * 0.015),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: _size.height * 0.6,
              width: _size.width * 0.8,
              child: ListView(
                children: [_periodTitle(_size), _periodTitle(_size)],
              ),
            ),
            SizedBox(height: _size.height * 0.015),
            _addButton(_size)
          ],
        ),
      ),
    );
  }

  Widget _periodTitle(Size size) {
    return SizedBox(
      height: size.height * 0.05,
      width: size.width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _textBox('Nombre', size),
          SizedBox(width: size.width * 0.0005),
          _textBox('Fecha Inicio', size),
          SizedBox(width: size.width * 0.0005),
          _textBox('Fecha Final', size)
        ],
      ),
    );
  }

  Widget _textBox(String text, Size size) {
    return Container(
      height: size.height * 0.04,
      width: size.width * 0.25,
      color: Colors.white,
      child: Text(text,
          style:
              TextStyle(fontSize: size.longestSide / size.shortestSide * 12)),
    );
  }

  Widget _addButton(Size size) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.01),
      child: ElevatedButton(
          onPressed: () {
            PeriodAddDialog().showLoginDialog(context);
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: size.longestSide / size.shortestSide * 16,
          ),
          style: ElevatedButton.styleFrom(
              elevation: 2,
              primary: Colors.green[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(200)))),
    );
  }
}
