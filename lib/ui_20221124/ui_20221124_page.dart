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
            style: const TextStyle(fontSize: 18.0),
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
                    iconSize: 48.0,
                    color: const Color(0xFFBBBBBB),
                    icon: const Icon(
                      Icons.close,
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: const LinearProgressIndicator(
                        backgroundColor: Color(0xFFCCCCCC),
                        color: Colors.lightGreen,
                        value: 0.9,
                        minHeight: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 32.0,
                  ),
                  const Text(
                    '5',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  Icon(
                    Icons.circle,
                    color: Colors.purpleAccent,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'NEW WORD',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Which of these is "coffee"?',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
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
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFDDDDDD),
                    primary: Colors.black26,
                  ),
                  child: const Text(
                    'CHECK',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
