import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:window_manager/window_manager.dart';
// import 'package:window_size/window_size.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

Future testWindowFunctions() async {
  // Size size = await DesktopWindow.getWindowSize();
  // print(size);

  // await DesktopWindow.setMinWindowSize(Size(800, 600));
  // await DesktopWindow.setMaxWindowSize(Size(800, 600));

  // await DesktopWindow.resetMaxWindowSize();
  // await DesktopWindow.toggleFullScreen();
  // bool isFullScreen = await DesktopWindow.getFullScreen();
  // await DesktopWindow.setFullScreen(true);
  // await DesktopWindow.setFullScreen(false);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    WidgetsFlutterBinding.ensureInitialized();
    // Must add this line.
    await windowManager.ensureInitialized();

    // Use it only after calling `hiddenWindowAtLaunch`
    // await DesktopWindow.setMinWindowSize(Size(800, 600));
    // await DesktopWindow.setMaxWindowSize(Size(800, 600));
    // await DesktopWindow.setFullScreen(false);
    windowManager.waitUntilReadyToShow().then((_) async {
      // Hide window title bar
      // await windowManager.setTitleBarStyle('hidden');
      await windowManager.setSize(Size(800, 600));
      await windowManager.setMaximumSize(Size(800, 600));
      await windowManager.setMinimumSize(Size(800, 600));
      // await windowManager.center();
      await windowManager.setMinimizable(false);
      await windowManager.setResizable(false);
      await windowManager.setFullScreen(false);
      // await windowManager.setTitleBarStyle();
      //setAlwaysOnTop
      //setTitle
      //setTitleBarStyle
      //setSkipTaskbar
      // setMovable
      // await windowManager.setSkipTaskbar(false);
    });
    // setWindowTitle('My App');
    // setWindowMaxSize(const Size(800, 600));
    // setWindowMinSize(const Size(800, 600));
    // setWindowFrame(
    //     Rect.fromCenter(center: Offset(1000, 500), width: 800, height: 600));
    // Future<Null>.delayed(Duration(seconds: 1), () {

    // });
  }
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
