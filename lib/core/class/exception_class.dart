class ExceptionClass implements Exception {
  String cause;
  String? message;

  static String input = "Input Error";
  static String cache = "Cache Request Error";
  static String parseToModel = "Error Parsing Model";
  static String network = "Global Network Request Error";
  static String networkMin1 = "Network -1 : USER_HAS_NOT_BEEN_VERIFIED";
  static String networkMin2 = "Network -2 : USER_BLOCK";
  static String networkMin3 = "Network -3 : BAD_REQUEST";
  static String networkMin4 = "Network -4 : TOKEN_EXPIRED";
  static String networkMin5 = "Network -5 : TOKEN_INVALID";
  static String networkMin6 = "Network -6 : TOKEN_BLACKLISTED";
  static String networkMin7 = "Network -7 : TOKEN_NOT_PROVIDED";
  static String networkMin8 = "Network -8 : CSRF_TOKEN_FAILED";
  static String networkMin9 = "Network -9 : FAILED";
  static String networkMin10 = "Network -10 : FORBIDDEN";
  static String networkMin11 = "Network -11 : USER_HAS_NOT_UPGRADE_ACCOUNT";
  static String unknow = "unknow_error";

  ExceptionClass(this.cause, {this.message});
}
