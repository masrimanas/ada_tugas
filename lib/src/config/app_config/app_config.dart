import 'package:ada_tugas/src/config/config.dart';
import 'package:flutter/material.dart';

@immutable
class AppConfig extends InheritedWidget {
  const AppConfig({
    super.key,
    required this.env,
    required super.child,
  });

  final AppConfigs env;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(covariant AppConfig oldWidget) {
    throw UnimplementedError();
  }
}

abstract class AppConfigs {
  const AppConfigs({
    required this.name,
    required this.supabaseApiLink,
    required this.anonKey,
    required this.jwtSecret,
    required this.serviceRole,
  });
  final String name;
  final String supabaseApiLink;
  final String anonKey;
  final String jwtSecret;
  final String serviceRole;
}

class DevConfig implements AppConfigs {
  @override
  String get name => 'DEV';

  @override
  String get supabaseApiLink => DevEnv.supabaseUrl;

  @override
  String get anonKey => DevEnv.anonKey;

  @override
  String get jwtSecret => DevEnv.jwtSecret;

  @override
  String get serviceRole => DevEnv.serviceRole;
}

class ProdConfig implements AppConfigs {
  @override
  String get name => 'PROD';

  @override
  String get supabaseApiLink => 'http://production.masrimanas.com';

  @override
  String get anonKey => throw UnimplementedError();

  @override
  String get jwtSecret => throw UnimplementedError();

  @override
  String get serviceRole => throw UnimplementedError();
}
