import 'package:flutter/material.dart';
import 'package:shool_management/src/controllers/user_controller.dart';
import 'package:shool_management/src/models/models.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserController _userController = UserController();
    User authUser = _userController.authUser;
    Size _size = MediaQuery.of(context).size;
    double _sizeResponsive = _size.longestSide / _size.shortestSide;
    return Padding(
      padding: EdgeInsets.only(top: _size.height * 0.06),
      child: Container(
        height: _size.height * 0.5,
        width: _size.width * 0.7,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: _sizeResponsive * 3,
                  spreadRadius: _sizeResponsive * 2)
            ]),
        child: Row(
          children: [
            _userBox(_size),
            _infoBox1(_size, authUser),
            _infoBox2(_size, authUser)
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
              Color.fromRGBO(113, 201, 206, 1),
              Color.fromARGB(255, 23, 128, 138),
            ],
            begin: FractionalOffset(0, 0.4),
            end: FractionalOffset(0.2, 1),
          ),
        ),
        child: Icon(Icons.person,
            color: const Color.fromRGBO(245, 241, 203, 1),
            size: size.height * 0.15),
      ),
    );
  }

  Widget _infoBox1(Size size, User user) {
    return SizedBox(
      height: size.height * 0.45,
      width: size.width * 0.2,
      child: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _text(size, 'ID: ' + user.id),
            _text(
                size,
                user.idType == 'Cédula de Ciudadanía'
                    ? 'Tipo Documento: CC'
                    : 'Tipo Documento: NIT'),
            _text(size, 'Nombre: ' + user.name),
            _text(size, 'Apellido: ' + user.lastName),
          ],
        ),
      ),
    );
  }

  Widget _infoBox2(Size size, User user) {
    return SizedBox(
      height: size.height * 0.45,
      width: size.width * 0.25,
      child: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _text(size, 'Estudios: ' + user.type),
            _text(size, 'Contrato: ' + user.contract),
            _text(size, 'Area: ' + user.area),
            _text(size, 'Email: ' + user.email),
          ],
        ),
      ),
    );
  }

  Widget _text(Size size, String text) {
    return SizedBox(
      width: size.width * 0.2,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: size.aspectRatio * 8),
      ),
    );
  }
}
