import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_cookbook/persistence/storing_key_value_data/storing_key_value_data_code.dart'
    as Code;

class StoringKeyValueDataPage extends StatefulWidget {
  @override
  StoringKeyValueDataPageState createState() {
    return new StoringKeyValueDataPageState();
  }
}

class StoringKeyValueDataPageState extends State<StoringKeyValueDataPage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = prefs.getInt("counter") ?? 0;
    });
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt("counter") ?? 0) + 1;
      prefs.setInt("counter", _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
          title: 'Storing key-value data',
          context: context,
          link:
              'https://flutter.io/docs/cookbook/persistence/reading-writing-files',
          codes: [
            CodeModel(
              title: 'Add Dependency',
              description: 'Add shared_preferences dependency.',
              code: Code.sharedPreferenceDependency,
            ),
            CodeModel(
              title: 'Saving Data',
              description: 'Save data into preferences.',
              code: Code.savingData,
            ),
            CodeModel(
              title: 'Reading Data',
              description: 'Read data from preferences.',
              code: Code.readData,
            ),
            CodeModel(
              title: 'Remove Data',
              description: 'Remove data from preferences.',
              code: Code.removeData,
            ),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
