import 'package:flutter/material.dart';
import 'package:weekly_trace_challenge/top_page/trace_item_tile.dart';

class TraceItemListView extends StatelessWidget {
  final int index;
  const TraceItemListView({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < 20; i++)
          const TraceItemTile(
            title: 'title',
            date: '2022/10/06',
          ),
      ],
    );
  }
}
