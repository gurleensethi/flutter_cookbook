import 'package:flutter/material.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/persistence/reading_writing_files/reading_writing_files_code.dart'
    as Code;
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;

      String contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      return 0;
    }
  }

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;

    return file.writeAsString('$counter');
  }
}

class ReadingWritingFilesPage extends StatefulWidget {
  final CounterStorage counterStorage;

  ReadingWritingFilesPage({this.counterStorage});

  @override
  ReadingWritingFilesPageState createState() {
    return new ReadingWritingFilesPageState();
  }
}

class ReadingWritingFilesPageState extends State<ReadingWritingFilesPage> {
  int _counter;

  @override
  void initState() {
    super.initState();
    widget.counterStorage.readCounter().then((value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() async {
    setState(() {
      _counter++;
    });

    return widget.counterStorage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        title: 'Reading Writing Files',
        link:
            'https://flutter.io/docs/cookbook/persistence/reading-writing-files',
        context: context,
        codes: [
          CodeModel(
            title: 'Add dependency',
            code: Code.pathProvider,
            description: 'Add path provider dependency.',
          ),
          CodeModel(
            title: 'Get Local Path',
            code: Code.localPath,
            description: 'Get local directory path.',
          ),
          CodeModel(
            title: 'Get File',
            code: Code.filePath,
            description: 'Open file from path.',
          ),
          CodeModel(
            title: 'Read Counter',
            code: Code.readCounter,
            description: 'Read value of counter from file.',
          ),
          CodeModel(
              title: 'Write Counter',
              code: Code.writeCounter,
              description: 'Write value of counter to file.'),
        ],
      ),
      body: Center(
        child: Text('Buttone tapped $_counter time${_counter == 1 ? '' : 's'}'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
