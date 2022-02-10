import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String? hintText;
  final TextEditingController? controller;
  final String Function(String)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool autofocus;
  CustomTextField(
      {Key? key,
      this.hintText,
      this.obscureText = false,
      this.controller,
      this.validator,
      this.inputFormatters,
      this.keyboardType,
      this.autofocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 0.0, top: 0.0),
            child: TextFormField(
              autofocus: autofocus,
              controller: controller,
              inputFormatters: inputFormatters,
              keyboardType: keyboardType,
              obscureText: obscureText,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
          ),
        ),
      ),
      height: 55.0,
    );
  }
}
