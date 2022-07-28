import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:shool_management/src/models/models.dart';

class PeriodController extends ChangeNotifier {
  final String _APILINK = 'https://unicauca-sena-backend.herokuapp.com';
  List<AcademicPeriod> _periods = [];
  AcademicPeriod period = AcademicPeriod(
      id: '',
      name: 'Nombre',
      startDate: 'Fecha Inicial',
      endDate: 'Fecha Final');

  get periods => _periods;

  PeriodController() {
    getAllPeriods();
  }

  Future<void> getAllPeriods() async {
    Uri uri = Uri.parse('$_APILINK/period/getAcademicPeriods');
    final response = await http.get(uri);
    final List<dynamic> data = jsonDecode(response.body);

    _periods.clear();
    for (var element in data) {
      _periods.add(AcademicPeriod.fromMap(element));
    }
    _periods.insert(0, period);
    notifyListeners();
  }

  Future<bool> createPeriod(AcademicPeriod period) async {
    Uri uri = Uri.parse('$_APILINK/period/createPeriod');
    final response = await http.post(uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(period.toJson()));

    final data = response.body == 'true' ? true : false;
    if (data) {
      getAllPeriods();
      return true;
    } else {
      return false;
    }
  }
}
