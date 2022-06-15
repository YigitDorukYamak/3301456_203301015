import 'package:flutter/material.dart';
import 'package:flutter_application_1/ger%C3%A7ekhikayeler/gercekhikaye.dart';
import 'package:flutter_application_1/giri%C5%9F%20ekran%C4%B1/giri%C5%9F.dart';
import 'package:flutter_application_1/gizem/gizem.dart';
import 'package:flutter_application_1/korku/korku.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/mitoloji/mitoloji.dart';
import 'package:flutter_application_1/sanat/sanat.dart';
import 'package:flutter_application_1/teori/teori.dart';

import '../kayıtbilgileri/kayıtbilgileri.dart';

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
      case 'giris':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => giris(),
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
      case 'kayıtbilgileri':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => kayitbilgileri(),
        );
      case 'Anaekran':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => AnaEkran(),
        );
      case 'teori':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => teori(),
        );
    }
  }
}
