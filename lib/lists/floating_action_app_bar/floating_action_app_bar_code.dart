final customScrollView = """Scaffold(
  body: CustomScrollView(
    slivers: <Widget>[]
  ),
);""";

final sliverAppBar = """CustomScrollView(
  slivers: <Widget>[
    SliverAppBar(
      title: Text('Floating app bar'),
      floating: true,
      flexibleSpace: Placeholder(),
      expandedHeight: 200,
    ),
  ],
);""";

final sliverList = """SliverList( 
  delegate: SliverChildBuilderDelegate(
    (context, index) => ListTile(title: Text('Item #\$index')),
    childCount: 1000,
  ),
)""";
