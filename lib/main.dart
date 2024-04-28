import 'package:flutter/material.dart';
import '/pages/candidats_list_page.dart' show CandidatsListPage;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ELECTIONS',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
          useMaterial3: true),
      color: Colors.brown,
      home: CandidatsListPage(),
    );
  }
}
