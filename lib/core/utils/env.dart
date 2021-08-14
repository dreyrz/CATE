import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get environment => envGet("environment");
  static String get baseUrl => envGet("baseUrl");
  static String get authBaseUrl => envGet("authBaseUrl");
  static String get clientId => envGet("clientId");
  static String get clientSecret => envGet("clientSecret");
  static String get redirectUrl => envGet("redirectUrl");
  static String get authorizeUrl =>
      "$authBaseUrl?client_id=$clientId&redirect_uri=$redirectUrl&response_type=token";

  static String envGet(String name) => dotenv.env[name] ?? "";
}
