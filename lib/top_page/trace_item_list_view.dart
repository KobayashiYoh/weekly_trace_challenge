import 'package:flutter/material.dart';
import 'package:weekly_trace_challenge/function_20221006/weather_forecasts_form_page.dart';
import 'package:weekly_trace_challenge/top_page/trace.dart';
import 'package:weekly_trace_challenge/top_page/trace_item_tile.dart';

class TraceItemListView extends StatelessWidget {
  final int index;
  const TraceItemListView({Key? key, required this.index}) : super(key: key);

  static const List<Trace> _uiTraces = [
    Trace(
      title: '○○',
      date: '2000/01/01',
      page: Scaffold(),
    ),
    Trace(
      title: '○○',
      date: '2000/01/01',
      page: Scaffold(),
    ),
    Trace(
      title: '○○',
      date: '2000/01/01',
      page: Scaffold(),
    ),
  ];

  static const List<Trace> _functionTraces = [
    Trace(
      title: 'フォーム作成（Form、正規表現）',
      date: '2022/10/06',
      page: WeatherForecastsFormPage(),
    ),
    Trace(
      title: '○○',
      date: '2000/01/01',
      page: Scaffold(),
    ),
    Trace(
      title: '○○',
      date: '2000/01/01',
      page: Scaffold(),
    ),
  ];

  final List<List<Trace>> _traceLists = const [
    _uiTraces,
    _functionTraces,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var item in _traceLists[index])
          TraceItemTile(
            trace: item,
          ),
      ],
    );
  }
}
