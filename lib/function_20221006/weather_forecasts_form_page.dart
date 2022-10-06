import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  final String pattern = r'^[0-9]{6}$';

  void _clearText() {
    setState(() {
      _controller = TextEditingController();
    });
  }

  Future<void> fetchWeather() async {
    final url = Uri.parse(
        'https://weather.tsukumijima.net/api/forecast?city=${_controller.text}');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  void submit() {
    if (_formKey.currentState!.validate()) {
      fetchWeather();
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
                    child: Text('結果を表示'),
                  ),
                ),
                Text(message),
                TextFormField(
                  controller: _controller,
                  validator: (value) {
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
