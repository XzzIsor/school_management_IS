import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class ScheduleManagement extends StatefulWidget {
  const ScheduleManagement({Key? key}) : super(key: key);

  @override
  State<ScheduleManagement> createState() => _ScheduleManagementState();
}

class _ScheduleManagementState extends State<ScheduleManagement> {
  String initHour = '7:00';
  String finalHour = '8:00';
  String competence = 'Competencia 1';
  String enviroment = 'Salón 1';
  String teacher = 'Profesor 1';
  String day = 'Lunes';

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          top: _size.height * 0.02,
          bottom: _size.height * 0.08,
          left: _size.width * 0.08,
          right: _size.width * 0.08),
      child: Container(
        padding: EdgeInsets.only(top: _size.height * 0.02),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: _size.longestSide / _size.shortestSide * 5,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            Text('Gestión de horarios',
                style: TextStyle(
                    fontSize: _size.longestSide / _size.shortestSide * 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(height: _size.height * 0.1),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [_firstColumn(_size), _secondColumn(_size)]),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Guardar'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPrimary: Colors.black,
                  elevation: 10,
                  primary: const Color.fromRGBO(113, 201, 206, 1),
                  textStyle: TextStyle(
                      fontSize: _size.longestSide / _size.shortestSide * 8)),
            ),
            SizedBox(height: _size.height * 0.02),
          ],
        ),
      ),
    );
  }

  SizedBox _firstColumn(Size _size) {
    return SizedBox(
      height: _size.height * 0.45,
      width: _size.width * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomComboBox(
              label: 'Docente',
              initValue: teacher,
              items: const ['Profesor 1', 'Profesor 2', 'Profesor 3'],
              onChange: (value) {
                setState(() {
                  teacher = value!;
                });
              }),
          CustomComboBox(
              label: 'Día',
              initValue: day,
              items: const ['Lunes', 'Martes', 'Miércoles', 'Jueves'],
              onChange: (value) {
                setState(() {
                  day = value!;
                });
              }),
          _hourSelector(_size)
        ],
      ),
    );
  }

  SizedBox _secondColumn(Size _size) {
    return SizedBox(
      height: _size.height * 0.45,
      width: _size.width * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomComboBox(
              label: 'Competencia',
              initValue: competence,
              items: const ['Competencia 1', 'Competencia 2', 'Competencia 3'],
              onChange: (value) {
                setState(() {
                  competence = value!;
                });
              }),
          SizedBox(
            width: _size.width * 0.25,
            child: CustomTextField(
                mainColor: Colors.black,
                label: 'Horas de Competencia',
                icon: Icons.hourglass_bottom,
                hintText: '20',
                onChange: (value) {},
                emailType: false,
                obscureText: false),
          ),
          SizedBox(height: _size.height * 0.05),
          CustomComboBox(
              label: 'Ambiente',
              initValue: enviroment,
              items: const ['Salón 1', 'Salón 2', 'Salón 3'],
              onChange: (value) {
                setState(() {
                  enviroment = value!;
                });
              }),
        ],
      ),
    );
  }

  Widget _hourSelector(Size size) {
    return SizedBox(
      height: size.height * 0.15,
      width: size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Franja Horaria',
            style: TextStyle(
                fontSize: size.longestSide / size.shortestSide * 6,
                color: Colors.black),
          ),
          Row(
            children: [
              _comboBoxInitHour(size),
              const Text(' -  ', style: TextStyle(color: Colors.black)),
              _comboBoxFinalHour(size)
            ],
          ),
        ],
      ),
    );
  }

  Widget _comboBoxInitHour(Size size) {
    return DropdownButton<String>(
        style: const TextStyle(color: Colors.black),
        borderRadius: BorderRadius.circular(25),
        iconDisabledColor: Colors.black,
        iconEnabledColor: Colors.black,
        value: initHour,
        icon: const Icon(Icons.arrow_drop_down),
        items: [
          '7:00',
          '8:00',
          '9:00',
          '10:00',
          '11:00',
          '12:00',
          '13:00',
          '14:00',
          '15:00',
          '16:00',
          '17:00',
          '18:00',
          '19:00',
          '20:00',
          '21:00',
          '22:00'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            initHour = value!;
          });
        });
  }

  Widget _comboBoxFinalHour(Size size) {
    return DropdownButton<String>(
        style: const TextStyle(color: Colors.black),
        borderRadius: BorderRadius.circular(25),
        iconDisabledColor: Colors.black,
        iconEnabledColor: Colors.black,
        value: finalHour,
        icon: const Icon(Icons.arrow_drop_down),
        items: [
          '8:00',
          '9:00',
          '10:00',
          '11:00',
          '12:00',
          '13:00',
          '14:00',
          '15:00',
          '16:00',
          '17:00',
          '18:00',
          '19:00',
          '20:00',
          '21:00',
          '22:00'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            finalHour = value!;
          });
        });
  }
}
