import 'package:flutter/material.dart';

class LoginCriarContaButtonWidget extends StatelessWidget {
  final void Function(BuildContext context) onClick;
  const LoginCriarContaButtonWidget({Key? key, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        InkWell(
            child: Container(
          height: 50,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Material(
            color: Colors.transparent,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(0),
                gradient: LinearGradient(
                  colors: [
                    Colors.grey,
                    Colors.grey,
                  ],
                ),
              ),
              child: InkWell(
                onTap: () {
                  onClick(context);
                },
                child: Center(
                  child: Text("Criar conta",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0)),
                ),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
