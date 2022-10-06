import 'dart:convert';

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
      final String results =
          const Utf8Decoder(allowMalformed: true).convert(response.bodyBytes);
      print(results);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
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
