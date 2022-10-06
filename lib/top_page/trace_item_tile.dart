import 'package:flutter/material.dart';
import 'package:weekly_trace_challenge/top_page/trace.dart';

class TraceItemTile extends StatelessWidget {
  final Trace trace;
  const TraceItemTile({Key? key, required this.trace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.4),
        ),
      ),
      child: ListTile(
        title: Text(
          trace.title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(trace.date),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => trace.page,
            ),
          );
        },
      ),
    );
  }
}
