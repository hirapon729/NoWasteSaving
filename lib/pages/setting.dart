import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../basicdata.dart';

class SettingPage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var BasicData = ref.watch(BasicDataProvider);
    var goal = BasicData.getGoal();
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: Center(
        child: 
        Column(
          children:[
            Text('目標金額: ¥${goal}円'),
            ElevatedButton(
              onPressed: () async {
                final value = await showGoalDiaglog(context);
                goal = value ?? goal;
                BasicData.setGoal(goal);
              }, 
              child: Text('目標金額を設定する')
            )
          ]
        ),  
      )
    );
  }
}

Future<int?> showGoalDiaglog(
  BuildContext context
) async {
  return showDialog(
    context: context,
    builder: (context){
      return _GoalDialog();
    }
  );
}

class _GoalDialog extends StatefulWidget{
  @override
  State createState() => _GoalDialogState();
}

class _GoalDialogState extends State<_GoalDialog>{
  final GoalTextController = TextEditingController();

  @override
  Widget build (BuildContext context){
    MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final List<Widget> actions = [
        TextButton(
          child: Text(localizations.cancelButtonLabel),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: Text(localizations.okButtonLabel),
          onPressed: () {
            // TODO バリデーション
            int input_goal = int.parse(GoalTextController.text, onError: (source) => 0,);
            Navigator.of(context).pop(input_goal);
          },
        ),
      ];
    final AlertDialog dialog = AlertDialog(
      title: Text("目標金額を入力"),
      content: TextField(
        controller: GoalTextController,
        decoration: InputDecoration(
          hintText: "目標金額を入力",
        ),
        autofocus: true,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
      actions: actions,
    );

    return dialog;
  }
  
  @override
  void dispose() {
    GoalTextController.dispose();
    super.dispose();
  }
}


