import 'package:flutter/material.dart';
import 'package:flutter_simple_route_animation/screens/home_screen.dart';
import 'package:flutter_simple_route_animation/screens/second_screen.dart';
import 'package:flutter_simple_route_animation/utils/route_animation.dart';
import 'package:flutter_simple_route_animation/utils/route_arguments.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          final arguments = settings.arguments as TransitionArguments;
          return RouteAnimation.slide(
              settings, arguments.offset, const SecondScreen());
        } else {
          return RouteAnimation.slide(
              settings, const Offset(1, 0), const HomeScreen());
        }
      },
    ));
