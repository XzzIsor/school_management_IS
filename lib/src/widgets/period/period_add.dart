import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shool_management/src/controllers/controllers.dart';
import 'package:shool_management/src/models/academic_period_model.dart';
import 'package:shool_management/src/widgets/custom_textfield.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class PeriodAdd extends StatefulWidget {
  const PeriodAdd({Key? key}) : super(key: key);

  @override
  State<PeriodAdd> createState() => _PeriodAddState();
}

class _PeriodAddState extends State<PeriodAdd> {
  String message = '';
  String name = '';
  DateTime? newDateTime = DateTime.now();
  DateTime? newDateTimeF = DateTime.now();
  String date = DateTime.now().toString().substring(0, 10);
  String dateF = DateTime.now().toString().substring(0, 10);

  @override
  Widget build(BuildContext context) {
    PeriodController _periodController = Provider.of<PeriodController>(context);

    Size _size = MediaQuery.of(context).size;
    TextStyle styleT = TextStyle(
        fontSize: _size.width / _size.height * 10, color: Colors.white);

    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(113, 201, 206, 1),
              Color.fromARGB(255, 23, 128, 138),
            ],
            begin: FractionalOffset(0.6, 0.8),
            end: FractionalOffset(0, 1),
          ),
          borderRadius: BorderRadius.circular(25)),
      height: _size.height * 0.65,
      width: _size.width * 0.3,
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: _size.longestSide / _size.shortestSide * 15,
              vertical: _size.longestSide / _size.shortestSide * 15),
          child: ListView(
            children: [
              Center(
                child: Text(
                  'Crear Periodo',
                  style: TextStyle(
                    fontSize: _size.longestSide / _size.shortestSide * 10,
                    color: Colors.white,
                  ),
                ),
              ),
              CustomTextField(
                  label: 'Nombre',
                  icon: Icons.abc,
                  hintText: 'Periodo 2020-1',
                  onChange: (value) {
                    name = value;
                  },
                  emailType: false,
                  obscureText: false),
              SizedBox(height: _size.height * 0.03),
              Text('Fecha Inicial', style: styleT),
              _datePickerInit(context, _size),
              SizedBox(height: _size.height * 0.015),
              Text('Fecha Final', style: styleT),
              _datePickerFinal(context, _size),
              SizedBox(height: _size.height * 0.015),
              _addButton(_size, _periodController),
              SizedBox(height: _size.height * 0.015),
              Center(
                child: Text(
                  message,
                  style: TextStyle(
                      color: Colors.white, fontSize: _size.aspectRatio * 4),
                ),
              )
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

  Widget _addButton(Size size, PeriodController periodController) {
    return SizedBox(
      width: size.width * 0.05,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(size.width / size.height * 10),
              elevation: 2,
              primary: const Color.fromRGBO(245, 241, 203, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          onPressed: () async {
            if (_validDate()) {
              AcademicPeriod period = AcademicPeriod(
                id: periodController.periods.length + 1,
                name: name,
                startDate: date,
                endDate: dateF,
              );
              bool isCreated = await periodController.createPeriod(period);
              if (!isCreated) {
                setState(() {
                  message = 'El periodo no pudo agregarse';
                });
              }
              Navigator.of(context).pop();
            } else {
              setState(() {
                message = 'El periodo debe ser de 3 o 6 meses';
              });
            }
          },
          child: Text('Agregar',
              style: TextStyle(
                  fontSize: size.longestSide / size.shortestSide * 10,
                  color: Colors.black))),
    );
  }

  bool _validDate() {
    final dateInit = date.split("-");
    final dateFinal = dateF.split("-");
    int duration = int.parse(dateFinal[1]) - int.parse(dateInit[1]);
    if (duration == 3 || duration == 6) {
      return true;
    }
    return false;
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
          primaryColor: const Color.fromRGBO(113, 201, 206, 1),
          // ignore: deprecated_member_use
          accentColor: const Color.fromRGBO(245, 241, 203, 1),
          textTheme: const TextTheme(
            caption:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            bodyText1:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            bodyText2:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          dialogBackgroundColor: const Color.fromARGB(255, 23, 128, 138),
          disabledColor: Colors.white),
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
      borderRadius: 16,
    );
  }
}
