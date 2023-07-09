import 'package:flutter/material.dart';
import 'package:my_first_app/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        //   useMaterial3: true,
        primarySwatch: Colors.orange,
      ),
      home: const WelcomeScreen(),
    );
  }
}
