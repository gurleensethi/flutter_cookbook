final code = {
  "theme": """Theme(
  // Create a unique theme with "ThemeData"
  data: ThemeData(
    accentColor: Colors.yellow,
  ),
  child: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
);""",
  "main_theme": """MaterialApp(
  title: title,
  theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],
    accentColor: Colors.cyan[600],
  ),
);"""
};
