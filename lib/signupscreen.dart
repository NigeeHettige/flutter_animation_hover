import 'package:flutter/material.dart';
import 'package:flutter_animation_hover/animatedimage.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(145, 131, 222, 1),
            Color.fromRGBO(160, 148, 227, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: topPadding,
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Image.asset('assets/clouds.png'),
                  AnimatedObject(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
