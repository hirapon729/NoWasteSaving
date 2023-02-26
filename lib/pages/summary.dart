import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('貯金額'),
      ),
      body: Center(
        child: Text('Savings: ¥savings'),
      ),
    );
  }
}
