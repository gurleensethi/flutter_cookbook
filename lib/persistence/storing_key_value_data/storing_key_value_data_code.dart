final sharedPreferenceDependency = """dependencies:
  flutter:
    sdk: flutter
  shared_preferences: "<newest version>""";

final savingData = """// obtain shared preferences
final prefs = await SharedPreferences.getInstance();

// set value
prefs.setInt('counter', counter);""";

final readData = """final prefs = await SharedPreferences.getInstance();

// Try reading data from the counter key. If it does not exist, return 0.
final counter = prefs.getInt('counter') ?? 0;""";

final removeData = """final prefs = await SharedPreferences.getInstance();

prefs.remove('counter');""";
