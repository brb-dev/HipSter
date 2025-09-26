enum Flavor { dev, prod }

class Config {
  Flavor appFlavor = Flavor.dev;
  int httpSendTimeout = 1300000;
  int httpConnectTimeout = 1300000;
  int httpReceiveTimeout = 1300000;

  String get _schema {
    switch (appFlavor) {
      case Flavor.dev:
      case Flavor.prod:
        return 'https://';
    }
  }

  String get urlConstants {
    switch (appFlavor) {
      case Flavor.dev:
      case Flavor.prod:
        return '/api/';
    }
  }

  String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return '${_schema}reqres.in';
      case Flavor.prod:
        return '${_schema}reqres.in';
    }
  }
}
