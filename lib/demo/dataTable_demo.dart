import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatelessWidget {
  int _sortColumnIndex;
  bool _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
                columns: [
                  DataColumn(
                      label: Text('Title'),
                      onSort: (int index, bool accending) {
                        setState(() {
                          _sortColumnIndex = index;
                          _sortAscending = accending;

                          posts.sort((a, b) {
                            if (!accending) {
                              final c = a;
                              a = b;
                              b = c;
                            }

                            return a.title.length.compareTo(b.title.length);
                          });
                        });
                      }
                    ),
                  DataColumn(
                      label: Text('Author'),
                    ),
                  DataColumn(
                    label: Text('Image'),
                  ),
                ],
                rows: posts.map((post) {
                  return DataRow(
                    selected: post.selected,
                    onSelectChanged: (bool value) {
                      setState(() {
                        if (!post.selected != value) {
                          post.selected = value;
                        } 
                      });
                    },
                    cells: [
                      DataCell(Text(post.title)),
                      DataCell(Text(post.author)),
                      DataCell(Image.network(post.imageUrl))
                  ]);
                }).toList()
            ),
          ],
        )
      ),
    );
  }
}
