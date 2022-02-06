import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/widget/sidebar_widget.dart';
import '../store/another_page_store.dart';

class AnotherPage extends StatefulWidget {
  final String title;
  const AnotherPage({Key? key, this.title = 'AnotherPage'}) : super(key: key);
  @override
  AnotherPageState createState() => AnotherPageState();
}

class AnotherPageState extends ModularState<AnotherPage, AnotherPageStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SidebarWidget(),
          Container(
            color: Colors.indigo[200],
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.amber,
                  child: Text(Uri.parse(window.location.href).host),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
