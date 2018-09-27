final fontSetup = """flutter:
  fonts:
    - family: Lobster
      fonts:
        - asset: fonts/lobster.ttf""";

final defaultFont = """MaterialApp(
  title: 'Custom Fonts',
  // Set Raleway as the default app font
  theme: ThemeData(fontFamily: 'Lobster'),
  home: MyHomePage(),
);""";

final textStyleFont = """Text(
  'Lobster sample',
  style: TextStyle(fontFamily: 'Lobster'),
);""";
