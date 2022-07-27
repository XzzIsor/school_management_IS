import 'package:flutter/material.dart';
import 'package:shool_management/src/widgets/widgets.dart';

class EnviromentTable extends StatefulWidget {
  const EnviromentTable({Key? key}) : super(key: key);

  @override
  State<EnviromentTable> createState() => _EnviromentTableState();
}

class _EnviromentTableState extends State<EnviromentTable> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: _size.height * 0.06),
          child: Center(
            child: Text(
              'Gestión de Ambientes',
              style: TextStyle(
                  fontSize: _size.longestSide / _size.shortestSide * 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  blurRadius: _size.width / _size.height * 12,
                  offset: const Offset(-5, 0))
            ]),
            height: _size.height * 0.7,
            width: _size.width * 0.95,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(_size.height * 0.015),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: _size.height * 0.6,
                  child: ListView(
                    children: [
                      _envTile(
                          _size, 'ID', 'Nombre', 'Tipo', 'Capacidad', 'Lugar'),
                      _envTile(
                          _size, 'ID', 'Nombre', 'Tipo', 'Capacidad', 'Lugar')
                    ],
                  ),
                ),
                SizedBox(height: _size.height * 0.015),
                Row(
                  children: [
                    _searchInput(_size),
                    SizedBox(
                      width: _size.width * 0.3,
                    ),
                    _addButton(_size)
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _envTile(Size size, String id, String name, String type,
      String capacity, String site) {
    return SizedBox(
      height: size.height * 0.05,
      width: size.width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _textBox(id, size),
          SizedBox(width: size.width * 0.0005),
          _textBox(name, size),
          SizedBox(width: size.width * 0.0005),
          _textBox(type, size),
          SizedBox(width: size.width * 0.0005),
          _textBox(capacity, size),
          SizedBox(width: size.width * 0.0005),
          _textBox(site, size),
          SizedBox(width: size.width * 0.0005),
          _crudButton(
              size, const Color.fromARGB(255, 19, 4, 158), Icons.edit, () {}),
          SizedBox(width: size.width * 0.005),
          _crudButton(
              size, const Color.fromARGB(255, 143, 4, 4), Icons.delete, () {}),
          SizedBox(width: size.width * 0.005),
          _crudButton(size, const Color.fromARGB(255, 194, 166, 7),
              Icons.content_paste_off, () {})
        ],
      ),
    );
  }

  SizedBox _crudButton(
      Size size, Color color, IconData icon, VoidCallback function) {
    return SizedBox(
      width: size.width * 0.04,
      child: ElevatedButton(
        onPressed: function,
        child: Icon(icon, size: size.aspectRatio * 6),
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _textBox(String text, Size size) {
    return Container(
      height: size.height * 0.04,
      width: size.width * 0.15,
      color: Colors.white,
      child: Text(
        text,
        style: TextStyle(fontSize: size.longestSide / size.shortestSide * 8),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _addButton(Size size) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.01),
      child: ElevatedButton(
          onPressed: () {
            EnviromentAddDialog().showEnviromentDialog(context);
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: size.longestSide / size.shortestSide * 16,
          ),
          style: ElevatedButton.styleFrom(
              elevation: 2,
              primary: Colors.green[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(200)))),
    );
  }

  Widget _searchInput(Size size) {
    return SizedBox(
      height: size.height * 0.08,
      width: size.width * 0.15,
      child: TextField(
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: size.longestSide / size.shortestSide * 8),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
            hintText: 'Buscar',
            hintStyle: const TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.search,
                color: Colors.white,
                size: size.longestSide / size.shortestSide * 16)),
      ),
    );
  }
}
