import 'package:flutter/material.dart';
import 'route_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {//we want to override the initstate stopping is a byproduct
    super.initState();//this runs the same function as if we didn't override it
    init();
  }

  Future<void> init() async {//essentially stops the logo screen after two seconds switches to route page
    await Future.delayed(const Duration(seconds: 2)).then((value) {//waits for two seconds and runs the code inside
      Navigator.pop(context);//removes the page off the screen
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const RoutePage()));//goes to the next page
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/Logo.png',
        ),
      ),
    );
  }
}
