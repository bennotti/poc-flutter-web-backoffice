import 'package:flutter/material.dart';

const String URL_BASE = "https://localhost:5001/api/";

class RIKeys {
  static final riKey2 = const Key('__RIKEY2__');
  static final riKey3 = const Key('__RIKEY3__');
  static final autenticacaoFormKey = const Key('__autenticacaoFormKey__');
}

enum AutenticacaoStatus { validando, valido, invalido }
