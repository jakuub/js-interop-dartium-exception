import 'package:js/js.dart';

main() {
  new Auth0(new Auth0Settings(
      clientID: "adsfdsaf",
      domain: "asdf",
      sso: true,
      callbackOnLocationHash: true,
      callbackURL: ""
  ));
}


@JS("Auth0")
class Auth0 {
  external Auth0(Auth0Settings settings);

  external login(Auth0Login login, [Function callback]);
  external logout(Auth0Logout);
  external changePassword(Auth0ChangePassword, [Function callback]);

  external parseHash(String);
  external decodeJwt(String);
}

@JS()
@anonymous
class Auth0Settings {
  external String get domain;
  external String get clientID;
  external String get callbackURL;
  external bool get callbackOnLocationHash;
  external bool get sso;

  external factory Auth0Settings({
  String domain,
  String clientID,
  String callbackURL,
  bool callbackOnLocationHash: true,
  bool sso: true
  });
}

@JS()
@anonymous
class Auth0Login {
  external String get connection;
  external String get username;
  external String get password;
  external String get scope;
  external String get state;
  external bool get callbackOnLocationHash;

  external factory Auth0Login({
  String connection,
  String username,
  String password,
  String scope: "openid profile",
  String state,
  callbackOnLocationHash: true
  });
}

@JS()
@anonymous
class Auth0ChangePassword {
  external String get connection;
  external String get username;
  external String get password;

  external factory Auth0ChangePassword({
  String connection,
  String username,
  String password
  });
}

@JS()
@anonymous
class Auth0Logout {
  external String get returnTo;

  external factory Auth0Logout({
  String returnTo
  });
}
