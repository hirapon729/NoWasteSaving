import 'package:chokin/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/home.dart';
import 'pages/summary.dart';
import 'pages/calender.dart';
import 'pages/setting.dart';
import 'pages/addsavingdata.dart';

import 'basicdata.dart';
import 'pagetype.dart';

void main() {
  BasicData();
  runApp(ProviderScope(child:  const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(), 
      home: MyMainWidget(),
    );
  }
}

class MyMainWidget extends ConsumerWidget {

  static var _pages = [
    HomePage(),
    SummaryPage(),
    CalenderPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var index = ref.watch(pageTypeProvider.state);
    var basicData = ref.watch(BasicDataProvider);
    basicData.initBasicData;
    return Scaffold(
        body: _pages[index.state.index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index.state.index,
          onTap: (((value) => index.state = PageType.values[value])),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
            BottomNavigationBarItem(icon: Icon(Icons.currency_yen), label: '貯金額'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'カレンダー'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定')
          ],
          type: BottomNavigationBarType.fixed,
        ),
       floatingActionButton: AddSavingDataPage()
    );
  }
}