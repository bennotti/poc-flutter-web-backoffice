import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../store/login_store.dart';
import '../widget/LoginEntrarButton.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginStore> {
  @override
  void initState() {
    super.initState();
    print('Initstate LoginPageState');
  }

  _onClickLogin(BuildContext context) async {
    setState(() {
      //_saving = true;
    });
    Modular.to.navigate('/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo[200],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[LoginEntrarButtonWidget(onClick: _onClickLogin)],
        ),
      ),
    );
  }
}
