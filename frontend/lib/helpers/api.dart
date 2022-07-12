part of 'package:frontend/helpers/import.dart';

String baseUrl = "http://10.0.3.2:1337";

String loginUrl = "$baseUrl/api/auth/local";
String registerUrl = "$baseUrl/api/auth/local/register";
String logoutUrl = "$baseUrl/auth/logout";
String fcmUrl = "$baseUrl/api/auth/local/fcm";


String addQuoteUrl = "$baseUrl/api/quotes";
String likeUrl = "$baseUrl/api/likes";

class AuthProvider extends GetConnect {
  Future<dynamic> login(Map data) async {
    final response = await post(loginUrl, data);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

  Future<dynamic> register(Map data) async {
    final response =
        await post(registerUrl, data);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

  Future<dynamic> saveToken(Map data) async {
    final response =
        await post(fcmUrl, data);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}

class QuotesProvider extends GetConnect {
  Future<dynamic> load(Map data) async {
    final response = await get(addQuoteUrl);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

  Future<dynamic> add(Map data) async {
    final response = await post(addQuoteUrl, data);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }

  Future<dynamic> like(Map data) async {
    final response = await post(likeUrl, data);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}
