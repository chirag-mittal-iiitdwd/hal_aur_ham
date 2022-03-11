import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hal Aur Ham',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Test(),
    );
  }
}

// class Test extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: Column(
//         children: [
//         ],
//       ),
//     );
//   }
// }
