import 'package:flutter/material.dart';

class WeatherForecastsFormPage extends StatefulWidget {
  const WeatherForecastsFormPage({Key? key}) : super(key: key);

  @override
  State<WeatherForecastsFormPage> createState() =>
      _WeatherForecastsFormPageState();
}

class _WeatherForecastsFormPageState extends State<WeatherForecastsFormPage> {
  TextEditingController _controller = TextEditingController();

  void _clearText() {
    setState(() {
      _controller = TextEditingController();
    });
  }

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
              TextFormField(
                controller: _controller,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: _clearText,
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
