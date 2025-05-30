import 'package:flutter/material.dart';
import 'package:portfolio_flutter/acceuil.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(
      context,
      "Open Sans",
      "Share Tech Mono",
    );

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'William AGENEAU',
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.dark() : theme.light(),
      home: const Accueil(),
    );
  }
}
