import 'package:flutter/material.dart';
import 'package:kas_personal/router.dart';
import 'package:kas_personal/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme,
      routerConfig: router,
    );
  }
}