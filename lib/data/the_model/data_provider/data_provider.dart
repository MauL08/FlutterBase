// THIS IS THE EXAMPLE OF THE PROVIDER
// The return value from the function is based on the model that are given after the request

import 'package:flutterbase/core/class/provider_class.dart';

class AuthDataProvider extends ProviderClass {
  Future postLogin(
    Map<String, dynamic> data,
  ) async {
    // var base = await doNetworkAndCachePost(
    //   Stringer.LOGIN,
    //   data: data,
    // );

    // return LoginModel.fromJson(base as Map<String, dynamic>);
  }

  Future postRegist(
    Map<String, dynamic> data,
  ) async {
    // var base = await doNetworkAndCachePost(
    //   Stringer.REGISTER,
    //   data: data,
    // );

    // return LoginModel.fromJson(base as Map<String, dynamic>);
  }

  Future postLogout() async {
    // await doNetworkAndCachePost(
    //   Stringer.LOGOUT,
    // );

    // removeUserLogin();
  }

  Future getOTP() async {
    // await doNetworkGet('${Stringer.OTP}/send');
  }

  Future verifOTP(
    Map<String, dynamic> data,
  ) async {
    // await doNetworkAndCachePost(Stringer.OTP, data: data);
  }

  saveUserLogin(String token) {
    // saveCache("access_token", token);
  }

  removeUserLogin() {
    // deleteCache("access_token");
  }

  void getIsUserLogged() {
    // var theCache = getCache("access_token");

    // if (theCache != null) {
    //   return true;
    // } else {
    //   return false;
    // }
  }

  void getUserToken() {
    // return (getCache("access_token") != null)
    //     ? getCache("access_token") as String
    //     : null;
  }
}
