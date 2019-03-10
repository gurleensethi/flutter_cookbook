final code = """GridView.count(
  crossAxisCount: 2,
  children: List.generate(100, (index) {
    return Center(
      child: Text(
        'Item \$index',
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }),
);""";
