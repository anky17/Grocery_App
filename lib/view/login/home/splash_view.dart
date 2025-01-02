import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/login/welcome_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    fireOpenApp();
  }

  void fireOpenApp() async {
    await Future.delayed(const Duration(seconds: 3));
    startApp();
  }

  void startApp() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeView()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xfff8f4f0),
      body: Center(
          child: Image.asset("assets/images/splash_screenlogo1.png",
              width: media.width * 0.5,
              fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) {
        return const Text('Error loading image');
      })),
    );
  }
}
