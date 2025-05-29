import 'package:dio/dio.dart';

class Getnews {
  Future<void> getnews() async {
    final Response response = await Dio().get(
      "https://newsapi.org/v2/everything?q=tunisia&apiKey=6b0adb76a67d4514a1708188bbdb7bd0",
    );
    print(response);
  }
}
