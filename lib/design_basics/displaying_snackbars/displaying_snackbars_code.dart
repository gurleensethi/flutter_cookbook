final snackbar = """final snackBar = SnackBar(
  content: Text('Yay! A SnackBar!'),
  action: SnackBarAction(
    label: 'Undo',
    onPressed: () {
      // Some code to undo the change!
    },
  ),
);

Scaffold.of(context).showSnackBar(snackBar);""";
