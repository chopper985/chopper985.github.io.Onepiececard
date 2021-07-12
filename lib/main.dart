import 'package:flutter/material.dart';
import 'package:one_piece_card/screen/introduce.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ONE PIECE CARD',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Introdure(),
    );
  }
}