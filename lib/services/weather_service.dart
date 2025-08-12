import 'dart:developer';

import 'package:weather_app/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);

  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '42f8df961eda4b95bfa122406252107';
  Future<WeatherModel> getCurrantWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMassage =
          e.response?.data['error']['message'] ?? 'opps there was an error';
      throw Exception(errorMassage);
    } catch (e) {
      log(e.toString());
      throw Exception('opps there was an error');
    }
  }
}
