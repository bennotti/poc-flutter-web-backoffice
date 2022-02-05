import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../store/splashscreen_store.dart';

class SplashscreenPage extends StatefulWidget {
  final String title;
  const SplashscreenPage({Key? key, this.title = 'SplashscreenPage'})
      : super(key: key);
  @override
  SplashscreenPageState createState() => SplashscreenPageState();
}

class SplashscreenPageState
    extends ModularState<SplashscreenPage, SplashscreenStore> {
  late ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();

    disposer = autorun((_) async {
      await store.checkLogin();

      Modular.to.navigate('/login');
    });
  }

  @override
  void dispose() {
    super.dispose();
    disposer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: new GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 60.0),
              child: Column(
                children: <Widget>[CircularProgressIndicator()],
              ),
            ),
          )),
    );
  }
}
