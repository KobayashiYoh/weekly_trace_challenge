import 'package:flutter/material.dart';

class UI20221124Page extends StatelessWidget {
  const UI20221124Page({Key? key}) : super(key: key);

  Widget _iconAndTextItem(String text, String imagePath) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Colors.black12,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(imagePath),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
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
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  children: [
                    _iconAndTextItem('Milck', 'assets/images/milch.png'),
                    _iconAndTextItem('Brot', 'assets/images/brot.png'),
                    _iconAndTextItem('Wasser', 'assets/images/wasser.png'),
                    _iconAndTextItem('Kaffee', 'assets/images/kaffee.png'),
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
      ),
    );
  }
}
