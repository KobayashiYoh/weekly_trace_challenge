import 'package:flutter/material.dart';

@immutable
class Trace {
  final String title;
  final String date;
  final Widget page;

  const Trace({
    required this.title,
    required this.date,
    required this.page,
  });
}
