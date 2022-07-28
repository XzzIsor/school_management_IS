import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:shool_management/src/models/models.dart';

class EnviromentController extends ChangeNotifier {
  final String _APILINK = 'https://unicauca-sena-backend.herokuapp.com';

  static final List<Classroom> _enviroments = [];
  static final List<Classroom> _activeEnviroments = [];
  final Classroom _classroomInfo = Classroom(
    cod: 'ID',
    name: 'Nombre',
    type: 'Tipo',
    capacity: 500,
    location: 'Lugar',
    state: true,
  );

  List<Classroom> get enviroments => _enviroments;
  List<Classroom> get activeEnviroments => _activeEnviroments;

  EnviromentController() {
    getAllEnviroments();
  }

  Future<void> getAllEnviroments() async {
    Uri uri = Uri.parse('$_APILINK/classroom/getClassrooms');
    final response = await http.get(uri);
    final List<dynamic> data = jsonDecode(response.body);

    _enviroments.clear();
    for (var element in data) {
      _enviroments.add(Classroom.fromMap(element));
    }
    _enviroments.insert(0, _classroomInfo);

    notifyListeners();
  }

  void getActiveEnviroments() {
    _activeEnviroments.clear();

    for (var element in _enviroments) {
      if (element.state) {
        _activeEnviroments.add(element);
      }
      notifyListeners();
    }
  }

  Future<bool> createEnviroment(Classroom enviroment) async {
    Uri uri = Uri.parse('$_APILINK/classroom/createClassroom');
    final response = await http.post(uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(enviroment.toMap()));
    final data = response.body == 'true' ? true : false;
    if (data) {
      getAllEnviroments();
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateEnviroment(Classroom classroom) async {
    Uri uri = Uri.parse('$_APILINK/classroom/updateClassrooms');
    final response =
        await http.put(uri, body: jsonEncode(classroom.toJson()), headers: {
      'Content-Type': 'application/json',
    });
    bool resp = response.body == 'true' ? true : false;
    if (resp) {
      getAllEnviroments();
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateEnviromentState(String id) async {
    Uri uri = Uri.parse('$_APILINK/classroom/updateClassrooms');
    final response = await http.put(uri, headers: {"id": id});
    bool resp = response.body == 'true' ? true : false;
    if (resp) {
      getAllEnviroments();
      getActiveEnviroments();
      return true;
    } else {
      return false;
    }
  }

  //TODO: Revisar esta madre
  Future<bool> deleteEnviroment(String id) async {
    Uri uri = Uri.parse('$_APILINK/classroom/deleteClassroom');
    final response = await http.delete(uri, headers: {"id": id});
    bool resp = response.body == 'true' ? true : false;
    if (resp) {
      getAllEnviroments();
      return true;
    } else {
      return false;
    }
  }
}
