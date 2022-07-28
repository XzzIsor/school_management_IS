import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:shool_management/src/models/models.dart';

class UserController {
  final String _APILINK = 'https://unicauca-sena-backend.herokuapp.com';

  static List<User> _allUsers = [];
  static List<User> _activeUsers = [];
  static User _authUser = User(
      id: '',
      idType: '',
      name: '',
      lastName: '',
      email: '',
      type: '',
      contract: '',
      area: '',
      teacher: false,
      state: false,
      hoursWeek: 0,
      hoursDay: 0);

  get allUsers => _allUsers;
  get authUser => _authUser;

  void getActiveUsers() async {
    for (var element in _allUsers) {
      if (element.state) {
        _activeUsers.add(element);
      }
    }
  }

  void getAllUsers() async {
    Uri uri = Uri.parse('$_APILINK/schedule/getUsers');
    final response = await http.get(uri);
    final List<dynamic> data = jsonDecode(response.body);

    for (var element in data) {
      _allUsers.add(User.fromMap(element));
    }
  }

  bool getAuthUser(String email, String password) {
    for (var user in _allUsers) {
      if (user.email == email && user.id == password) {
        _authUser = user;
        return true;
      }
    }
    return false;
  }
}
