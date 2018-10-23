final visibleVariable = """bool _visible = true;""";

final visibleButton = """FloatingActionButton(
  onPressed: () {
    setState(() {
      _visible = !_visible;
    });
  },
  tooltip: 'Toggle Opacity',
  child: Icon(Icons.flip),
);""";

final animatedOpacity = """AnimatedOpacity(
  opacity: _visible ? 1.0 : 0.0,
  duration: Duration(milliseconds: 500),
  child: Container(
    width: 200.0,
    height: 200.0,
    color: Colors.green,
  ),
);""";