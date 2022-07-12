part of 'package:frontend/helpers/import.dart';

String baseUrl = "http://10.0.3.2:5000";

String loginUrl = baseUrl + "/auth/login";
String registerUrl = baseUrl + "/auth/signup";
String logoutUrl = baseUrl + "/auth/logout";
String fcmUrl = baseUrl + "/auth/fcm";

String likeUrl = baseUrl + "";
Dio dio = new Dio();

Future<Map<dynamic, dynamic>> sendFCM(String authToken) async {
  try {
    String? fcmToken = await FirebaseMessaging.instance.getToken();

    if (fcmToken != null) {
      print(fcmToken);
      FormData formData = FormData.fromMap({'fcm': fcmToken});

      var response = await dio.request(fcmUrl,
          data: formData,
          options: RequestOptions.Options(headers: {
            "x-access-token": authToken,
          }, method: 'POST'));

      print(response.data);

      if (response.data["success"]) {
        return {'fcmSent': true, 'fcm': fcmToken};
      } else {
        return {'fcmSent': false, 'fcm': ""};
      }
    } else {
      return {'fcmSent': false, 'fcm': ""};
    }
  } catch (e) {
    print(e);
    print("Error while sending FCM token");
    return {'fcmSent': false, 'fcm': ""};
  }
}

Future<Map<dynamic, dynamic>> loginUser(String email, String password) async {
  try {
    var response = await Dio()
        .post(loginUrl, data: {'password': password, 'email': email});
    var fcm = await sendFCM(response.data["token"]);

    Map<dynamic, dynamic> user = response.data;

    user['fcmSent'] = fcm['fcmSent'];
    user['fcm'] = fcm['fcm'];

    FlutterSecureStorage().write(key: "user", value: jsonEncode(user));

    return {
      'success': false,
      'email': response.data["email"],
      'firstName': response.data["firstName"],
      'lastName': response.data["lastName"],
      'type': response.data["type"],
      'phone': response.data["phone"],
      'token': response.data["token"]
    };
  } catch (e) {
    print("Error while logining the user");
    print(e);
    return {
      'success': false,
    };
  }
}

Future<Map<dynamic, dynamic>> registerUser(String firstName, String secondName,
    String email, String phone, String password) async {
  try {
    var response = await Dio().post(registerUrl, data: {
      'password': password,
      'email': email,
      'lname': secondName,
      'fname': firstName,
      'phone': phone
    });

    var fcm = await sendFCM(response.data["token"]);

    Map<dynamic, dynamic> user = response.data;
    user['fcmSent'] = fcm['fcmSent'];
    user['fcm'] = fcm['fcm'];
    FlutterSecureStorage().write(key: "user", value: jsonEncode(user));

    return {
      'success': true,
      'email': response.data["email"],
      'firstName': response.data["firstName"],
      'lastName': response.data["lastName"],
      'type': response.data["type"],
      'phone': response.data["phone"],
      'token': response.data["token"]
    };
  } catch (e) {
    print("Error while registering User");
    print(e);
    return {
      'success': false,
    };
  }
}

Future<Map<dynamic, dynamic>> logOutUser(String token) async {
  try {
    var response = await dio.request(logoutUrl,
        options: RequestOptions.Options(headers: {
          "x-access-token": token,
        }, method: 'POST'));
    FlutterSecureStorage().write(key: "user", value: null);

    return {
      'success': response.data['success'],
    };
  } catch (e) {
    print("Error while logging out User");
    print(e);
    return {
      'success': false,
    };
  }
}

Future<Map<dynamic, dynamic>> like(String token, var quote_id) async {
  try {
    var response = await dio.request(logoutUrl,
        options: RequestOptions.Options(headers: {
          "x-access-token": token,
        }, method: 'POST'));
    FlutterSecureStorage().write(key: "user", value: null);

    return {
      'success': response.data['success'],
    };
  } catch (e) {
    print("Error while logging out User");
    print(e);
    return {
      'success': false,
    };
  }
}
