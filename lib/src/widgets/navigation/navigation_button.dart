import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ValueNotifier<bool> isDialOpen = ValueNotifier(false);
    return FloatingActionButton(
      onPressed: () {
        isDialOpen.value = !isDialOpen.value;
      },
      child: _navigationMenu(size, isDialOpen, context),
      elevation: 10,
      mouseCursor: MouseCursor.defer,
      backgroundColor: const Color.fromRGBO(165, 201, 202, 1),
      foregroundColor: const Color.fromRGBO(165, 201, 202, 1),
      focusColor: const Color.fromRGBO(165, 201, 202, 1),
    );
  }

  SpeedDial _navigationMenu(
      Size size, ValueNotifier<bool> isDialOpen, BuildContext context) {
    return SpeedDial(
      overlayColor: Colors.black26,
      overlayOpacity: 0.5,
      spaceBetweenChildren: size.longestSide / size.shortestSide * 2,
      animatedIcon: AnimatedIcons.menu_close,
      openCloseDial: isDialOpen,
      animatedIconTheme:
          IconThemeData(size: size.longestSide / size.shortestSide * 13),
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      children: [
        SpeedDialChild(
          backgroundColor: const Color.fromRGBO(165, 201, 202, 1),
          child: const Icon(Icons.person),
          label: 'Usuario',
          onTap: () {
            Navigator.pushReplacementNamed(context, '/user');
            isDialOpen.value = false;
          },
        ),
        SpeedDialChild(
          backgroundColor: const Color.fromRGBO(165, 201, 202, 1),
          child: const Icon(Icons.calendar_today),
          label: 'Periodo',
          onTap: () {
            isDialOpen.value = false;
            Navigator.pushReplacementNamed(context, '/period');
          },
        ),
        SpeedDialChild(
          backgroundColor: const Color.fromRGBO(165, 201, 202, 1),
          child: const Icon(Icons.schedule),
          label: 'Agenda',
          onTap: () {
            isDialOpen.value = false;
            //Navigator.pushNamed(context, '//TODO: add route');
          },
        ),
      ],
    );
  }
}
