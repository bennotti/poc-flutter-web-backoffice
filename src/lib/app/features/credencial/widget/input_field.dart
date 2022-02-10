import 'package:flutter/material.dart';

import '../../../shared/widget/custom_text_field.dart';

class InputField extends StatelessWidget {
  final String label;
  final String content;

  InputField({required this.label, required this.content});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Login"),
            CustomTextField(
                obscureText: false,
                keyboardType: TextInputType.text,
                hintText: "Informe o apelido ou e-mail"),
          ],
        );
      },
    );
  }
}
