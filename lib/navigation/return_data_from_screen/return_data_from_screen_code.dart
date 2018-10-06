final homeScreen = """class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returning Data Demo'),
      ),
      // We'll create the SelectionButton Widget in the next step 
      body: Center(child: SelectionButton()),
    );
  }
}""";

final selectionButton = """class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Pick an option, any option!'),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );
  }
}""";

final selectionScreen = """class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  // Pop here with "Yep"...
                },
                child: Text('Yep!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  // Pop here with "Nope"
                },
                child: Text('Nope.'),
              ),
            )
          ],
        ),
      ),
    );
  }
}""";

final responseButtons = """RaisedButton(
  onPressed: () {
    // Our Yep button will return "Yep!" as the result
    Navigator.pop(context, 'Yep!');
  },
  child: Text('Yep!'),
);

RaisedButton(
  onPressed: () {
    // Our Nope button will return "Nope!" as the result
    Navigator.pop(context, 'Nope!');
  },
  child: Text('Nope!'),
);""";

final snackBar = """_navigateAndDisplaySelection(BuildContext context) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SelectionScreen()),
  );

  // After the Selection Screen returns a result, show it in a Snackbar!
  Scaffold.of(context).showSnackBar(SnackBar(content: Text("\$result")));
}""";