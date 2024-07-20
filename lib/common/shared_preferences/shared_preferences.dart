
import 'package:musaeid/common/shared_preferences/shared_pref_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';





class SharedPreferenceHelper {
  final SharedPreferences _prefs;

  SharedPreferenceHelper(this._prefs);

 static Future<void> saveUsers(String email, String password) async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
  }

 static Future<Map<String, String>?> getUsers() async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? email = prefs.getString('email');
    final String? password = prefs.getString('password');
    if (email != null && password != null) {
      return {
        'email': email,
        'password': password,
      };
    } else {
      return null;
    }
  }

 static Future<void> saveUserId(String userId) async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
  }

 static Future<String?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('userId');
  }



 static Future<void> clearUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    await prefs.remove('password');
    await prefs.remove(SharedPrefsConsts.loginToken);
  }
}
  Future<void> saveLoginToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(SharedPrefsConsts.loginToken, token);
  print("Saved login token: $token");
}

Future<String> getLoginToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString(SharedPrefsConsts.loginToken);
  print("Retrieved login token: $token");  // Log the retrieved token for debugging
  return token ?? 'No data found';
}



 Future<void> saveOtpToken(String token) async {
SharedPreferences prefs = await SharedPreferences.getInstance();
await prefs.setString(SharedPrefsConsts.otpToken, token);
}

 Future<String> getOtpToken() async {
SharedPreferences prefs = await SharedPreferences.getInstance();
return prefs.getString(SharedPrefsConsts.otpToken) ?? 'No data found';

}