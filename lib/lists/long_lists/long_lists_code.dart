final items = """final items = List<String>.generate(10000, (i) => "Item \$i");""";

final list = """ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('\${items[index]}'),
    );
  },
);""";