import 'package:flutter/material.dart';

class RouteAnimation {
  static Route slide(RouteSettings settings, Offset offset, Widget child) {
    return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          Offset begin = offset;
          const end = Offset.zero;
          const curve = Curves.ease;

          final tween = Tween(begin: begin, end: end);
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }
}
