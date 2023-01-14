
import 'package:get/get.dart';
import 'package:travel_apps/pages/base.dart';
import 'package:travel_apps/pages/detailPage.dart';
import 'package:travel_apps/pages/historyPage.dart';
import 'package:travel_apps/pages/homePage.dart';
import 'package:travel_apps/pages/pencarianPage.dart';

import 'entrance/login.dart';
import 'entrance/splashScreen.dart';
import 'entrance/unknownPage.dart';

class RoutePage {

  List <GetPage>route = [
    GetPage(name: "/", page: () => SplashScreen()),
    GetPage(name: "/login", page: () => Login()),
    GetPage(name: "/unknown", page: () => UnknownPage()),
    GetPage(name: "/base", page: () => Base()),
    GetPage(name: "/detail", page: () => DetailPage()),
    GetPage(name: "/history", page: () => HistoryPage()),
    GetPage(name: "/pencarian", page: () => PencarianPage()),
    GetPage(name: "/home", page: () => HomePage()),

  ];
}