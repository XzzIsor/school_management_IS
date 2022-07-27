import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      required this.label,
      required this.icon,
      required this.hintText,
      required this.onChange,
      required this.emailType,
      required this.obscureText,
      this.initialValue,
      this.inputFormatters,
      this.validator,
      this.counterText,
      this.maxLines,
      this.mainColor})
      : super(key: key);

  final String label;
  final String? counterText;
  final IconData icon;
  final String hintText;
  final int? maxLines;
  final Function(String) onChange;
  final String? Function(String?)? validator;
  final bool emailType;
  final bool obscureText;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final Color? mainColor;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode? _focusNode;
  bool obsText = false;
  IconData obsIcon = Icons.visibility;

  @override
  void initState() {
    _focusNode = FocusNode();
    obsText = widget.obscureText;
    super.initState();
  }

  @override
  void dispose() {
    _focusNode!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLines: widget.maxLines,
        initialValue: widget.initialValue,
        obscureText: obsText,
        inputFormatters: widget.inputFormatters,
        onTap: _requestFocus,
        focusNode: _focusNode,
        cursorColor: Colors.white,
        onChanged: widget.onChange,
        keyboardType:
            widget.emailType ? TextInputType.emailAddress : TextInputType.text,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            suffixIcon: widget.obscureText
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obsText = !obsText;
                        obsText
                            ? obsIcon = Icons.visibility
                            : obsIcon = Icons.visibility_off;
                      });
                    },
                    icon: Icon(
                      obsIcon,
                    ),
                    color: widget.mainColor ?? Colors.white)
                : null,
            icon: Icon(widget.icon, color: widget.mainColor ?? Colors.white),
            labelText: widget.label,
            labelStyle: TextStyle(
                color: _focusNode!.hasFocus
                    ? widget.mainColor ?? Colors.white
                    : Colors.black),
            fillColor: Colors.white,
            hintText: widget.hintText,
            enabledBorder: _borderStyle(),
            focusedBorder: _borderStyle(),
            counterText: widget.counterText),
        validator: widget.validator);
  }

  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  UnderlineInputBorder _borderStyle() {
    return UnderlineInputBorder(
        borderSide:
            BorderSide(color: widget.mainColor ?? Colors.white, width: 1.5));
  }
}
