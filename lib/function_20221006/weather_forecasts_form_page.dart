import 'package:flutter/material.dart';
import 'package:weekly_trace_challenge/function_20221006/weather_forecast_repository.dart';

class WeatherForecastsFormPage extends StatefulWidget {
  const WeatherForecastsFormPage({Key? key}) : super(key: key);

  @override
  State<WeatherForecastsFormPage> createState() =>
      _WeatherForecastsFormPageState();
}

class _WeatherForecastsFormPageState extends State<WeatherForecastsFormPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  final String message = '地域ID（6ケタの数字）を入力してください。';

  void _clearText() {
    setState(() {
      _controller = TextEditingController();
    });
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      WeatherForecastRepository.fetchWeather(_controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(
                  child: Center(
                    child: Text(
                      '各拠点の地域ID\n東京: 130010\n長野: 200020\n岡山: 330010\n広島: 340010\n',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Text(message),
                TextFormField(
                  controller: _controller,
                  validator: (value) {
                    const String pattern = r'^[0-9]{6}$';
                    if (!RegExp(pattern).hasMatch(value!)) {
                      return message;
                    }
                    return null;
                  },
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
                        onPressed: submit,
                        child: const Text('送信'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
