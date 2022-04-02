import 'package:flutter/material.dart';
import 'package:flutter_application_1/gercekhikaye.dart';
import 'package:flutter_application_1/gizem.dart';
import 'package:flutter_application_1/korku.dart';
import 'package:flutter_application_1/mitoloji.dart';
import 'package:flutter_application_1/sanat.dart';
import 'package:flutter_application_1/teori.dart';

class routeGenerations {
  static Route<dynamic>? RouteGeneration(RouteSettings settings) {
    switch (settings.name) {
      case 'gercekhikaye':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => gercekhikaye(),
        );
      case 'gizem':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => gizem(),
        );
      case 'korku':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => korku(),
        );
      case 'mitoloji':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => mitoloji(),
        );
      case 'sanat':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => sanat(),
        );
      case 'teori':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => teori(),
        );
    }
  }
}
