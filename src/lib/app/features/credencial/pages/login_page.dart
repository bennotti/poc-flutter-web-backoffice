import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../store/login_store.dart';
import '../widget/LoginCriarContaButton_widget.dart';
import '../widget/LoginEntrarButton.dart';
import '../widget/input_field.dart';

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

  _onClickOnboarding(BuildContext context) async {
    setState(() {
      //_saving = true;
    });
    Modular.to.navigate('/onboarding');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/bgs/bg1.jpg"))),
              ),
            ),
            Container(
              width: 550,
              padding: EdgeInsets.only(
                  top: 15.0, right: 70.0, left: 70.0, bottom: 10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 35.0,
                        fontFamily: 'Merriweather'),
                  ),
                  const SizedBox(height: 21.0),

                  //InputField Widget from the widgets folder
                  InputField(label: "Username", content: "a_khanooo"),
                  SizedBox(height: 20.0),
                  InputField(label: "Username", content: "a_khanooo"),

                  SizedBox(height: 20.0),

                  LoginEntrarButtonWidget(onClick: _onClickLogin),
                  SizedBox(height: 20.0),
                  LoginCriarContaButtonWidget(onClick: _onClickOnboarding),

                  SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
