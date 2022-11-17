import 'package:flutter/material.dart';

enum HandSelect {
  rock,
  paper,
  scissors,
}

class RockPaperScissorsPage extends StatefulWidget {
  const RockPaperScissorsPage({Key? key}) : super(key: key);

  @override
  State<RockPaperScissorsPage> createState() => _RockPaperScissorsPageState();
}

class _RockPaperScissorsPageState extends State<RockPaperScissorsPage> {
  String _displayTitleText = 'じゃんけん…';
  String _displayCPUText = '相手「」';

  String _handSelectText(HandSelect handSelect) {
    switch (handSelect) {
      case HandSelect.rock:
        return 'グー';
      case HandSelect.paper:
        return 'パー';
      case HandSelect.scissors:
        return 'チョキ';
      default:
        return '';
    }
  }

  void _onTapHandSelectButton(HandSelect playerHandSelect) {
    HandSelect cpuHandSelect = HandSelect.rock;
    setState(() {
      _displayCPUText = _handSelectText(cpuHandSelect);
    });
    final bool win = (playerHandSelect == HandSelect.rock &&
            cpuHandSelect == HandSelect.scissors) ||
        (playerHandSelect == HandSelect.paper &&
            cpuHandSelect == HandSelect.rock) ||
        (playerHandSelect == HandSelect.scissors &&
            cpuHandSelect == HandSelect.paper);
    if (playerHandSelect == cpuHandSelect) {
      // あいこ
      setState(() {
        _displayTitleText = 'あいこ…';
      });
    } else if (win) {
      // 勝ち
      setState(() {
        _displayTitleText = '勝ち！';
      });
    } else {
      // 負け
      setState(() {
        _displayTitleText = '負け';
      });
    }
  }

  Widget _handSelectButton(HandSelect handSelect) {
    final String buttonText = _handSelectText(handSelect);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 64.0,
        child: TextButton(
          onPressed: () => _onTapHandSelectButton(handSelect),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.black,
          ),
          child: Text(buttonText),
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
              Text(
                _displayTitleText,
                style: const TextStyle(fontSize: 32.0),
              ),
              Text(
                '相手「$_displayCPUText」',
                style: const TextStyle(fontSize: 32.0),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var handSelect in HandSelect.values)
                      _handSelectButton(handSelect)
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
