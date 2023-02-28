import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/savingdata.dart';

class AddSavingDataPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      child:Icon(Icons.add),
      onPressed: () async {
        final value = await showAddSavingData(context);
      }
    );
  }
}

Future<SavingData?> showAddSavingData(
  BuildContext context
) async {
  return  showDialog(
    context: context,
    builder: (context){
      return AddSavingDataWidget();
    }
  );
}

class AddSavingDataWidget extends StatefulWidget {

  @override
  _AddSavingDataWidgetState createState() => _AddSavingDataWidgetState();
}

class _AddSavingDataWidgetState extends State<AddSavingDataWidget> {
  final _formKey = GlobalKey<FormState>();
  late int _money;
  late String _text;
  late DateTime _date;

  @override
  void initState() {
    super.initState();
    _money = 0;
    _text = '';
    _date = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return  
    AlertDialog(
      title: Text('データを追加'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: '金額'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '金額を入力してください';
                }
                final intValue = int.tryParse(value);
                if (intValue == null || intValue <= 0) {
                  return '正しい金額を入力してください';
                }
                return null;
              },
              onSaved: (value) {
                _money = int.parse(value!);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: '内容'),
              onSaved: (value) {
                _text = value ?? '';
              },
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    child: Text(DateFormat.yMd().format(_date)),
                    onPressed: () async {
                      final newDate = await showDatePicker(
                        context: context,
                        initialDate: _date,
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      if (newDate != null) {
                        setState(() {
                          _date = newDate;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text('キャンセル'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text('追加'),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              final data = SavingData(
                money: _money,
                text: _text,
                date: _date.microsecondsSinceEpoch,
              );
              // repositoryを呼び出す
              Navigator.of(context).pop();
            }
          },
        ),
      ],
    );
  }
}