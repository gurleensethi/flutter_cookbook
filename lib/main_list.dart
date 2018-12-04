import 'package:flutter/material.dart';
import 'package:flutter_cookbook/item_list.dart' as ItemList;

class MainList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = ItemList.items[index];
        EdgeInsets padding;
        if (index == 0) {
          padding = EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0);
        } else {
          padding = EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 24.0);
        }
        return Container(          
          margin: EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0), 
                  child: Text(
                  item["name"],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
                ),
              ),
              _getSubItemList(item["items"]),
            ],
          ),
        );
      },
      itemCount: ItemList.items.length,
    );
  }

  // Return the list of sub-items
  _getSubItemList(List<Map<String, String>> items) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            Navigator.of(context)
                .pushNamed(item["route"]);
          },
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              item["name"],
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
