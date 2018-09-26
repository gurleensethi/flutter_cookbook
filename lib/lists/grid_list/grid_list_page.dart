import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/lists/grid_list/grid_list_code.dart' as Code;

class GridListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Grid List',
        link: 'https://flutter.io/cookbook/lists/grid-lists/',
        codes: [
          CodeModel(
            title: 'GridView',
            description: 'Create a simple grid list using GridView.count',
            code: Code.code,
          ),
        ]
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          200,
          (index) {
            return Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            );
          },
        ),
      ),
    );
  }
}
