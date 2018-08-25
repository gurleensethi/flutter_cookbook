import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/PrimaryAppBar.dart';
import 'package:flutter_cookbook/design_basics/working_with_tabs/working_with_tabs_code.dart'
    as Code;

class WorkingWithTabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: primaryAppBar(
          context: context,
          title: "Working with Tabs",
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
          codes: [
            CodeModel(
              title: "Creating tabs",
              description: "Setting up the tabs.",
              code: Code.creatingTabs,
            ),
            CodeModel(
              title: "Adding content",
              description: "Setting up content in TabView.",
              code: Code.addingContent,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
