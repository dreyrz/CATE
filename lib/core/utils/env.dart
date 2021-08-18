import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get apiUrl => envGet("apiUrl");
  static String get apiKey => envGet("apiKey");

  static String envGet(String name) => dotenv.env[name] ?? "";
}
