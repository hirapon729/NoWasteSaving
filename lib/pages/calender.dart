import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カレンダー'),
      ),
      body:
          const Center(child: Text('カレンダー', style: TextStyle(fontSize: 32.0))),
    );
  }
}