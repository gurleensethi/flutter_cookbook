final mainScreen = """class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
        child: Image.network('image url'),
      ),
    );
  }
}""";

final detailScreen = """class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Image.network('image url'),
        ),
      ),
    );
  }
}""";

final mainHero = """Hero(
  tag: 'imageHero',
  child: Image.network(
    'image url',
  ),
);""";

final detailHero = """Hero(
  tag: 'imageHero',
  child: Image.network(
    'image url',
  ),
);""";