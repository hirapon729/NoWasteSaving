import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final BasicDataProvider = ChangeNotifierProvider(((ref) => BasicData()));

class BasicData extends ChangeNotifier {
  static int defalutGoal = 10000;
  int _goal = 0;
  int _savedAmount = 0;

  void initBasicData() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _goal = prefs.getInt('goal') ?? defalutGoal;
    _savedAmount = prefs.getInt('savedAmount') ?? 0;
  }

  void setGoal(int value) async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('goal', value);
    _goal = value;
    notifyListeners();
  }

  void setSavedAmount(int value) async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('savedAmount', value);
    _savedAmount = value;
    notifyListeners();
  }

  int getGoal(){
    return _goal;
  }

  int getsavedAmount(){
    return _savedAmount;
  }

  int getGap(){
    return _goal - _savedAmount;
  }

}