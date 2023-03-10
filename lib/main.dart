import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myphotogram/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        indicatorColor: Colors.blueGrey,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        indicatorColor: Colors.blueGrey,
      ),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(),
    );
  }
}
