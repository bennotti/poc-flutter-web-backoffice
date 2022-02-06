import 'package:flutter/material.dart';

class EsqueceuSenhaPage extends StatefulWidget {
  final String title;
  const EsqueceuSenhaPage({Key? key, this.title = 'EsqueceuSenhaPage'}) : super(key: key);
  @override
  EsqueceuSenhaPageState createState() => EsqueceuSenhaPageState();
}
class EsqueceuSenhaPageState extends State<EsqueceuSenhaPage> {
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