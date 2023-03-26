import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UI20230126 extends StatelessWidget {
  const UI20230126({Key? key}) : super(key: key);

  Widget _settingItem(
    String titleText,
    Widget action, {
    BorderRadiusGeometry? borderRadius,
  }) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
      ),
      child: Row(
        children: [
          Text(
            titleText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const Spacer(),
          action,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _settingItem(
                'title',
                CupertinoSwitch(
                  value: true,
                  onChanged: (value) {},
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              _settingItem(
                'title',
                const Text('hoge hoge >'),
              ),
              _settingItem(
                'title',
                CupertinoSwitch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
              _settingItem(
                'title',
                CupertinoSwitch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              _settingItem(
                'title',
                CupertinoSwitch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              _settingItem(
                'title',
                CupertinoSwitch(
                  value: true,
                  onChanged: (value) {},
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
