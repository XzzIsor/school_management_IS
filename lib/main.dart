import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shool_management/src/controllers/controllers.dart';

import 'package:shool_management/src/views/views.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => EnviromentController()),
        ChangeNotifierProvider(create: (context) => PeriodController()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [Locale('es')],
      theme: ThemeData(fontFamily: 'Avenir'),
      title: 'School Management',
      initialRoute: '/',
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
