import 'package:flutter/material.dart';

class CustomComboBox extends StatefulWidget {
  const CustomComboBox(
      {Key? key,
      required this.label,
      required this.initValue,
      required this.items,
      required this.onChange})
      : super(key: key);
  final String label;
  final String initValue;
  final List<String> items;
  final Function(String?) onChange;

  @override
  State<CustomComboBox> createState() => _CustomComboBoxState();
}

class _CustomComboBoxState extends State<CustomComboBox> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.label,
              style: TextStyle(
                  fontSize: size.longestSide / size.shortestSide * 6,
                  color: Colors.black)),
          DropdownButton<String>(
              style: const TextStyle(color: Colors.black),
              borderRadius: BorderRadius.circular(25),
              iconDisabledColor: Colors.black,
              iconEnabledColor: Colors.black,
              value: widget.initValue,
              icon: const Icon(Icons.arrow_drop_down),
              items: widget.items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: widget.onChange)
        ],
      ),
    );
  }
}
