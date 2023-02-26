import 'package:chokin/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

class HomePage extends ConsumerWidget {

  HomePage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var basicdata = ref.watch(BasicDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('貯金アプリ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '目標:${basicdata.getGoal().toString()}円',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'これまでの貯金額：${basicdata.getsavedAmount().toString()}円',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              '残り金額：${basicdata.getGap().toString()}円',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}