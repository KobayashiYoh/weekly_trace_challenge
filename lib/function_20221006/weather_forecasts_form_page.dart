import 'package:flutter/material.dart';

class WeatherForecastsFormPage extends StatelessWidget {
  const WeatherForecastsFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: Center(
                  child: Text('結果を表示'),
                ),
              ),
              const Text('地域ID（6ケタの数字）を入力してください。'),
              TextFormField(),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('クリア'),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('送信'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
