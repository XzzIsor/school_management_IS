import 'package:flutter/material.dart';
import 'package:shool_management/src/controllers/controllers.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String message = '';
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final UserController _userController = UserController();
    String _email = '';
    String _password = '';

    CustomTextField _emailInput = CustomTextField(
      label: 'E-Mail',
      icon: Icons.email_outlined,
      hintText: 'example@gmail.com',
      onChange: (value) {
        _email = value;
      },
      emailType: true,
      obscureText: false,
      validator: (value) {
        String pattern =
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regExp = RegExp(pattern);
        String? respEmail = regExp.hasMatch(value ?? '')
            ? null
            : 'Ingrese un correo electrónico válido';
        return respEmail;
      },
    );

    CustomTextField _passwordInput = CustomTextField(
      label: 'Contraseña',
      icon: Icons.lock_outline,
      hintText: '***********',
      onChange: (value) {
        _password = value;
      },
      emailType: false,
      obscureText: true,
      maxLines: 1,
      validator: (value) {
        String? resp = value != null && value.length >= 6
            ? null
            : 'La contraseña debe tener al menos 6 caracteres';
        return resp;
      },
    );

    ElevatedButton _button = ElevatedButton(
      onPressed: () {
        bool auth = _userController.getAuthUser(_email, _password);
        auth
            ? Navigator.pushReplacementNamed(context, '/user')
            : setState(() {
                message = 'Usuario o contraseña incorrectos';
              });
      },
      child: const Text(
        'Ingresar',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPrimary: Colors.transparent,
          primary: Colors.transparent,
          side: const BorderSide(color: Colors.white),
          onSurface: Colors.white),
    );

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 23, 128, 138),
              Color.fromRGBO(113, 201, 206, 1),
            ],
            begin: FractionalOffset(0.15, 0.6),
            end: FractionalOffset(0.3, 0.9),
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
      height: _size.height * 0.6,
      width: _size.width * 0.25,
      child: Form(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: ListView(
            children: [
              const Center(
                child: Text('Iniciar Sesión',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              SizedBox(height: _size.width * 0.01),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: _emailInput,
              ),
              SizedBox(height: _size.width * 0.02),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: _passwordInput,
              ),
              SizedBox(height: _size.width * 0.04),
              Center(child: _button),
              SizedBox(height: _size.width * 0.02),
              Text(message,
                  style: TextStyle(
                      color: Colors.white, fontSize: _size.aspectRatio * 8)),
            ],
          ),
        ),
      ),
    );
  }
}
