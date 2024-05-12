import 'package:flutter/material.dart';

import '../Views/DataCollectionScreen/data_collection_screen.dart';
import '../Views/HomeScreen/home_screen_view.dart';
import '../Views/OnboardScreen/onboard_screen_view.dart';

enum Routes{
  onBoardScreen, homeScreen, dataCollectionScreen, waterIntakeMenu
}

MaterialPageRoute? generateRoute(RouteSettings routeSettings) {
  final Map<String, WidgetBuilder> routes = {
    Routes.onBoardScreen.toString(): (context) => const OnboardScreenView(),
    Routes.homeScreen.toString(): (context) => const HomeScreenView(),
    Routes.dataCollectionScreen.toString() : (context) => const DataCollectionScreenView(),
  };
  final WidgetBuilder? builder = routes[routeSettings.name];
  return (builder != null) ? MaterialPageRoute(builder: builder) : null;
}