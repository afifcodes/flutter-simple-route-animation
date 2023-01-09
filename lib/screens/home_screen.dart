import 'package:flutter/material.dart';
import 'package:flutter_simple_route_animation/utils/route_arguments.dart';
import 'package:flutter_simple_route_animation/utils/system_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GestureDetector button({text, onTap}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[900], borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(16),
        child: Text(
          text,
          style: GoogleFonts.inter(
              color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  //
  // @idnflutter
  // afifudinx.vercel.app/flutter
  //

  @override
  Widget build(BuildContext context) {
    systemUi();
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/2.png'),
            Text(
              'Home Screen',
              style: GoogleFonts.inter(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1,
                  color: Colors.grey[900]),
            ),
            const SizedBox(
              height: 12,
            ),
            button(
                text: 'Transition From Top',
                onTap: () {
                  Navigator.pushNamed(context, '/second',
                      arguments:
                          TransitionArguments(offset: const Offset(0, -1)));
                }),
            const SizedBox(
              height: 4,
            ),
            button(
                text: 'Transition From Left',
                onTap: () {
                  Navigator.pushNamed(context, '/second',
                      arguments:
                          TransitionArguments(offset: const Offset(-1, 0)));
                }),
            const SizedBox(
              height: 4,
            ),
            button(
                text: 'Transition From Bottom',
                onTap: () {
                  Navigator.pushNamed(context, '/second',
                      arguments:
                          TransitionArguments(offset: const Offset(0, 1)));
                }),
            const SizedBox(
              height: 4,
            ),
            button(
                text: 'Transition From Right',
                onTap: () {
                  Navigator.pushNamed(context, '/second',
                      arguments:
                          TransitionArguments(offset: const Offset(1, 0)));
                }),
          ],
        ),
      ),
    );
  }
}
