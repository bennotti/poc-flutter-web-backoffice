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
          Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height, child: Text("opa")),
          ),
        ],
      ),
    );
  }
}
