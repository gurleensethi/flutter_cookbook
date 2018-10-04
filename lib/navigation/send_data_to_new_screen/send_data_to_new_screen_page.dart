import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/navigation/send_data_to_new_screen/send_data_to_new_screen_code.dart'
    as Code;

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class SendDataToNewScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todos = List<Todo>.generate(
      20,
      (i) => Todo(
            'Todo $i',
            'A description of what needs to be done for Todo $i',
          ),
    );

    return Scaffold(
      appBar: primaryAppBar(
        title: 'Data to new screen',
        link: 'https://flutter.io/cookbook/navigation/passing-data/',
        context: context,
        codes: [
          CodeModel(
            title: 'Todo class',
            description:
                'Create a Todo class which will be passed to the next page.',
            code: Code.todo,
          ),
          CodeModel(
            title: 'Todo List',
            description: 'Set up a todo list in the first page.',
            code: Code.todoData,
          ),
          CodeModel(
            title: 'List View',
            description: 'Display the todo list data in ListView.',
            code: Code.todoList,
          ),
          CodeModel(
            title: 'Detail Page',
            description: 'Set up the second page which will take a Todo.',
            code: Code.detailPage,
          ),
          CodeModel(
            title: 'Show second page with data',
            description: 'Show the second page using Navigator and pass the data along with it.',
            code: Code.navigator,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(todo: todos[index]);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;

  const DetailScreen({
    Key key,
    this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${todo.title}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('${todo.description}'),
      ),
    );
  }
}
