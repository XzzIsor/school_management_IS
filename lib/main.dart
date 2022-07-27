import 'package:flutter/material.dart';
import 'package:shool_management/src/views/views.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [Locale('es')],
      theme: ThemeData(fontFamily: 'Avenir'),
      title: 'School Management',
      initialRoute: '/period',
      routes: {
        '/': (context) => const LoginPage(),
        '/user': (context) => const UserPage(),
        '/period': (context) => const PeriodPage(),
        '/enviroment': (context) => const EnviromentPage(),
        '/schedule': (context) => const SchedulePage()
      },
    );
  }
}
