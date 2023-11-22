import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'app.dart';

bool isNfcAvalible = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  isNfcAvalible = await NfcManager.instance.isAvailable();
  runApp(const App());
}