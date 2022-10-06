import 'package:flutter/material.dart';

class TraceItemTile extends StatelessWidget {
  final String title;
  final String date;
  const TraceItemTile({
    Key? key,
    required this.title,
    required this.date,
  }) : super(key: key);

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
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(date),
        onTap: () {},
      ),
    );
  }
}
