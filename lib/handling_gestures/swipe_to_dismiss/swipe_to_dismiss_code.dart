final demoList =
    """final items = List<String>.generate(20, (i) => "Item \${i + 1}");""";

final listCode = """ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(title: Text('\${items[index]}'));
  },
);""";

final dismissibleCode = """Dismissible(
  background: Container(color: Colors.red),
  key: Key(item),
  onDismissed: (direction) {
    setState(() {
      items.removeAt(index);
    });

    Scaffold
        .of(context)
        .showSnackBar(SnackBar(content: Text("\$item dismissed")));
  },
  child: ListTile(title: Text('\$item')),
);""";
