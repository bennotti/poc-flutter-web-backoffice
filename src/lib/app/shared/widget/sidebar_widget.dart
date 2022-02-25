import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SidebarWidget extends StatelessWidget {
  final String title;
  const SidebarWidget({Key? key, this.title = "SidebarWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = List.generate(10, (i) => 'test $i');
    return Container(
        width: 150,
        child: SafeArea(
            right: false,
            child: Drawer(
              elevation: 0,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('Logo'),
                    onTap: () {
                      // Using navigator key, because the widget is above nested navigator
                      Modular.to.navigate('/dashboard/another-page');
                      // navigatorKey.currentState.pushNamed(s);
                    },
                  ),
                  ListTile(
                    title: Text('Meu dia'),
                    onTap: () {
                      // Using navigator key, because the widget is above nested navigator
                      Modular.to.navigate('/dashboard/another-page');
                      // navigatorKey.currentState.pushNamed(s);
                    },
                  ),
                  ListTile(
                    title: Text('Tarefas'),
                    onTap: () {
                      // Using navigator key, because the widget is above nested navigator
                      Modular.to.navigate('/dashboard/another-page');
                      // navigatorKey.currentState.pushNamed(s);
                    },
                  ),
                  ListTile(
                    title: Text('Tarefa pasta'),
                    onTap: () {
                      // Using navigator key, because the widget is above nested navigator
                      Modular.to.navigate('/dashboard/another-page');
                      // navigatorKey.currentState.pushNamed(s);
                    },
                  ),
                  ListTile(
                    title: Text('Tarefa lista'),
                    onTap: () {
                      // Using navigator key, because the widget is above nested navigator
                      Modular.to.navigate('/dashboard/another-page');
                      // navigatorKey.currentState.pushNamed(s);
                    },
                  ),
                  ListTile(
                    title: Text('Nova lista'),
                    onTap: () {
                      // Using navigator key, because the widget is above nested navigator
                      Modular.to.navigate('/dashboard/another-page');
                      // navigatorKey.currentState.pushNamed(s);
                    },
                  ),
                  ListTile(
                    title: Text('Nova pasta'),
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
