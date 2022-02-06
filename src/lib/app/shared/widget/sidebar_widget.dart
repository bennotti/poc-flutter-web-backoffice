import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SidebarWidget extends StatelessWidget {
  final String title;
  const SidebarWidget({Key? key, this.title = "SidebarWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = List.generate(50, (i) => 'test $i');
    return Container(
        child: SafeArea(
            right: false,
            child: Drawer(
              elevation: 0,
              child: ListView(
                children: <Widget>[
                  for (final s in routes)
                    ListTile(
                      title: Text(s),
                      onTap: () {
                        // Using navigator key, because the widget is above nested navigator
                        Modular.to.navigate('/dashboard/another-page');
                        // navigatorKey.currentState.pushNamed(s);
                      },
                    ),
                ],
              ),
            )));
  }
}
