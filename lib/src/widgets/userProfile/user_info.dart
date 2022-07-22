import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: _size.height * 0.06),
      child: Container(
        height: _size.height * 0.5,
        width: _size.width * 0.7,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            _userBox(_size),
            _infoBox(_size, 'Juanito', '1202202', '15')
          ],
        ),
      ),
    );
  }

  Widget _userBox(Size size) {
    return Padding(
      padding: EdgeInsets.all(size.height * 0.05),
      child: Container(
        width: size.height * 0.25,
        height: size.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(44, 51, 51, 1),
              Color.fromRGBO(57, 97, 100, 1),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ),
        child: Icon(Icons.person,
            color: const Color.fromRGBO(165, 201, 202, 1),
            size: size.height * 0.15),
      ),
    );
  }

  Widget _infoBox(Size size, String name, String id, String age) {
    return SizedBox(
      height: size.height * 0.45,
      width: size.width * 0.5,
      child: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _text(size, 'Nombre: ' + name),
            _text(size, 'ID: ' + id),
            _text(size, 'Edad: ' + age)
          ],
        ),
      ),
    );
  }

  Widget _text(Size size, String text) {
    return SizedBox(
      width: size.width * 0.45,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: size.height * 0.03),
      ),
    );
  }
}