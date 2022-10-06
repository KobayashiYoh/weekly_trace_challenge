import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  final List<Widget> _tabs = const [
    Tab(text: 'UI Trace'),
    Tab(text: 'Function Trace'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Weekly Trace Challenge'),
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            for (int i = 0; i < _tabs.length; i++)
              Center(
                child: _tabs[i],
              ),
          ],
        ),
      ),
    );
  }
}
