import 'package:flutter/material.dart';

class RockPaperScissorsPage extends StatelessWidget {
  const RockPaperScissorsPage({Key? key}) : super(key: key);

  Widget _handSelectButton(void Function()? onPressed, String text) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 64.0,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.black,
          ),
          child: Text(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'じゃんけん…',
                style: TextStyle(fontSize: 32.0),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _handSelectButton(() {}, 'グー'),
                    _handSelectButton(() {}, 'チョキ'),
                    _handSelectButton(() {}, 'パー'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
