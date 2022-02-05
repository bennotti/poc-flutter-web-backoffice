import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_flutter_web_backoffice/app/features/dashboard/dashboard_store.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key? key, this.title = 'DashboardPage'}) : super(key: key);
  @override
  DashboardPageState createState() => DashboardPageState();
}
class DashboardPageState extends State<DashboardPage> {
  final DashboardStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}