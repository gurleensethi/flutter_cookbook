final pathProvider = """dependencies:
path_provider: <latest_version>""";

final localPath = """Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}""";

final filePath = """Future<File> get _localFile async {
  final path = await _localPath;
  return File('\$path/counter.txt');
}""";

final readCounter = """Future<int> readCounter() async {
  try {
    final file = await _localFile;
    String contents = await file.readAsString();
    return int.parse(contents);
  } catch (e) {
    return 0;
  }
}""";

final writeCounter = """Future<File> writeCounter(int counter) async {
  final file = await _localFile;
  return file.writeAsString('\$counter');
}""";