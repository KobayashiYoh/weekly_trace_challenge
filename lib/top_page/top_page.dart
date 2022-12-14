import 'package:flutter/material.dart';
import 'package:weekly_trace_challenge/top_page/trace_item_list_view.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);
  final List<String> _titleTexts = const [
    'UI Trace',
    'Function Trace',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: _titleTexts.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Weekly Trace Challenge'),
          bottom: TabBar(
            tabs: <Widget>[
              for (var text in _titleTexts) Tab(text: text),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            for (int i = 0; i < _titleTexts.length; i++)
              TraceItemListView(
                index: i,
              ),
          ],
        ),
      ),
    );
  }
}
