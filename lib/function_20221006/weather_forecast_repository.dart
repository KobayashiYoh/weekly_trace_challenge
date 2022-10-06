import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherForecastRepository {
  static Future<void> fetchWeather(String city) async {
    final url =
        Uri.parse('https://weather.tsukumijima.net/api/forecast?city=$city');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final String results =
          const Utf8Decoder(allowMalformed: true).convert(response.bodyBytes);
      print(results);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  }
}
