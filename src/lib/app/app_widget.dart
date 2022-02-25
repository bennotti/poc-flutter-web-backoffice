import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TooltipVisibility(
        visible: false, // disables tooltip
        child: MaterialApp(
          title: 'POC Flutter Web',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.blue),
        ).modular());
  }
}
