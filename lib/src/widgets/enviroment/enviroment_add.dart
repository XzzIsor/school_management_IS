import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class EnviromentAdd extends StatefulWidget {
  const EnviromentAdd({Key? key}) : super(key: key);

  @override
  State<EnviromentAdd> createState() => _EnviromentAddState();
}

class _EnviromentAddState extends State<EnviromentAdd> {
  String type = 'Presencial';

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

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
          child: _content(_size)),
    );
  }

  Widget _content(Size size) {
    return ListView(
      children: [
        Center(
          child: Text(
            'Crear Ambiente',
            style: TextStyle(
              fontSize: size.longestSide / size.shortestSide * 10,
              color: Colors.white,
            ),
          ),
        ),
        CustomTextField(
          label: 'ID',
          icon: Icons.numbers,
          hintText: 'AA001',
          onChange: (value) {},
          emailType: false,
          obscureText: false,
        ),
        CustomTextField(
          label: 'Nombre',
          icon: Icons.abc_rounded,
          hintText: 'Salón de Aula',
          onChange: (value) {},
          emailType: false,
          obscureText: false,
        ),
        CustomTextField(
          label: 'Capacidad',
          icon: Icons.person_add,
          hintText: '30',
          onChange: (value) {},
          emailType: false,
          obscureText: false,
        ),
        CustomTextField(
          label: 'Lugar',
          icon: Icons.location_city,
          hintText: 'Edificio A',
          onChange: (value) {},
          emailType: false,
          obscureText: false,
        ),
        _typeComboBox(size),
        _addButton(size)
      ],
    );
  }

  Widget _typeComboBox(Size size) {
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.02,
        bottom: size.height * 0.01,
        right: size.width * 0.18,
      ),
      child: SizedBox(
        height: size.height * 0.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tipo',
                style: TextStyle(
                    fontSize: size.longestSide / size.shortestSide * 5,
                    color: Colors.white)),
            DropdownButton<String>(
                style: const TextStyle(color: Colors.white),
                borderRadius: BorderRadius.circular(25),
                iconDisabledColor: Colors.white,
                iconEnabledColor: Colors.white,
                value: type,
                icon: const Icon(Icons.arrow_drop_down),
                items: <String>['Presencial', 'Virtual']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    type = value!;
                  });
                }),
          ],
        ),
      ),
    );
  }

  Widget _addButton(Size size) {
    return SizedBox(
      width: size.width * 0.05,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(size.width / size.height * 10),
              elevation: 2,
              primary: const Color.fromRGBO(245, 241, 203, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          onPressed: () {},
          child: Text('Agregar',
              style: TextStyle(
                  fontSize: size.longestSide / size.shortestSide * 10,
                  color: Colors.black))),
    );
  }
}
