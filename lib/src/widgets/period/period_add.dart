import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/custom_textfield.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class PeriodAdd extends StatefulWidget {
  const PeriodAdd({Key? key}) : super(key: key);

  @override
  State<PeriodAdd> createState() => _PeriodAddState();
}

class _PeriodAddState extends State<PeriodAdd> {
  DateTime? newDateTime = DateTime.now();
  DateTime? newDateTimeF = DateTime.now();
  String date = DateTime.now().toString().substring(0, 10);
  String dateF = DateTime.now().toString().substring(0, 10);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    TextStyle styleT = TextStyle(
        fontSize: _size.width / _size.height * 10, color: Colors.white);

    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(44, 51, 51, 1),
              Color.fromRGBO(57, 97, 100, 1),
            ],
            begin: FractionalOffset(0.6, 0.8),
            end: FractionalOffset(0, 1),
          ),
          borderRadius: BorderRadius.circular(25)),
      height: _size.height * 0.6,
      width: _size.width * 0.3,
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: _size.width / _size.height * 15,
              vertical: _size.width / _size.height * 15),
          child: ListView(
            children: [
              CustomTextField(
                  label: 'Nombre',
                  icon: Icons.abc,
                  hintText: 'Periodo 2020-1',
                  onChange: (value) {},
                  emailType: false,
                  obscureText: false),
              SizedBox(height: _size.height * 0.03),
              Text('Fecha Inicial', style: styleT),
              _datePickerInit(context, _size),
              SizedBox(height: _size.height * 0.015),
              Text('Fecha Final', style: styleT),
              _datePickerFinal(context, _size),
              SizedBox(height: _size.height * 0.015),
              _addButton(_size)
            ],
          )),
    );
  }

  Widget _datePickerInit(BuildContext context, Size size) {
    return Container(
      margin: EdgeInsets.all(size.width / size.height * 10),
      height: size.height * 0.04,
      width: size.width * 0.15,
      child: Row(
        children: [
          Text(
            date,
            style: TextStyle(
                fontSize: size.width / size.height * 10, color: Colors.white),
          ),
          IconButton(
              onPressed: () async {
                newDateTime = await _datePickerWidget(size);
                setState(() {
                  date = newDateTime.toString().substring(0, 10);
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  Widget _datePickerFinal(BuildContext context, Size size) {
    return Container(
      margin: EdgeInsets.all(size.width / size.height * 10),
      height: size.height * 0.04,
      width: size.width * 0.15,
      child: Row(
        children: [
          Text(
            dateF,
            style: TextStyle(
                fontSize: size.width / size.height * 10, color: Colors.white),
          ),
          IconButton(
              onPressed: () async {
                newDateTimeF = await _datePickerWidget(size);
                setState(() {
                  dateF = newDateTimeF.toString().substring(0, 10);
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ))
        ],
      ),
    );
  }

  Widget _addButton(Size size) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(size.width / size.height * 10),
            elevation: 2,
            primary: const Color.fromRGBO(165, 201, 202, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {},
        child: Text('Agregar',
            style: TextStyle(
                fontSize: size.width / size.height * 12, color: Colors.black)));
  }

  Future<DateTime?> _datePickerWidget(Size size) async {
    return showRoundedDatePicker(
      context: context,
      height: size.height * 0.3,
      styleDatePicker: MaterialRoundedDatePickerStyle(
        textStyleButtonPositive:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        textStyleButtonNegative:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        colorArrowNext: Colors.white,
        colorArrowPrevious: Colors.white,
        textStyleMonthYearHeader:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        textStyleYearButton:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(57, 97, 100, 1),
          // ignore: deprecated_member_use
          accentColor: const Color.fromRGBO(165, 201, 202, 1),
          textTheme: const TextTheme(
            caption:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            bodyText1:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            bodyText2:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          dialogBackgroundColor: const Color.fromRGBO(44, 51, 51, 1),
          disabledColor: Colors.white),
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
      borderRadius: 16,
    );
  }
}
