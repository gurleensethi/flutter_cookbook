final packageCode = """
<code>awesome_package/
  lib/
    awesome_package.dart
    fonts/
      lobster.ttf
</code>
""";

final dependencyCode = """dependencies:
  awesome_package: <latest_version>""";

final fontDeclaration = """flutter: 
  fonts: 
    - family: Lobster fonts: 
      - asset: packages/awesome_package/fonts/lobster.ttf""";

final fontUsage = """Text(
  'Using the Lobster font from the awesome_package',
  style: TextStyle(
    fontFamily: 'Lobster',
    package: 'awesome_package',
  ),
);""";
