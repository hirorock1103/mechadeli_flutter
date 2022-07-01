import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class MyTable extends StatelessWidget {
  List<TableRow> rowList;
  Map<int, TableColumnWidth> columnWidths = {};

  MyTable({ required this.rowList, required this.columnWidths, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths:  columnWidths ,
      children: rowList
    );
  }
}
