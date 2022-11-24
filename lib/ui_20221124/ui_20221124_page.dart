import 'package:flutter/material.dart';

class UI20221124Page extends StatelessWidget {
  const UI20221124Page({Key? key}) : super(key: key);

  Widget _iconAndTextItem(String text) {
    return Container(
      child: Column(
        children: [
          Icon(Icons.abc),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
                const Expanded(
                  child: LinearProgressIndicator(
                    value: 0.1,
                  ),
                ),
                const Icon(Icons.favorite),
                const Text('5'),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.circle),
                Text('NEW WORD'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('coffee?'),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  _iconAndTextItem('Milck'),
                  _iconAndTextItem('Milck'),
                  _iconAndTextItem('Milck'),
                  _iconAndTextItem('Milck'),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('CHECK'),
            ),
          ],
        ),
      ),
    );
  }
}
