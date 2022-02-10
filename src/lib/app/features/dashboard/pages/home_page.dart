import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/widget/sidebar_widget.dart';
import '../store/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SidebarWidget(),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: DataTable(
                columns: [
                  DataColumn(
                      label: Text('ID',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Name',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Profession',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Stephen')),
                    DataCell(Text('Actor')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('5')),
                    DataCell(Text('John')),
                    DataCell(Text('Student')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('10')),
                    DataCell(Text('Harry')),
                    DataCell(Text('Leader')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('15')),
                    DataCell(Text('Peter')),
                    DataCell(Text('Scientist')),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
