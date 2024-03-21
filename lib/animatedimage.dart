import 'package:flutter/material.dart';

class AnimatedObject extends StatefulWidget {
  const AnimatedObject({super.key});

  @override
  State<AnimatedObject> createState() => _AnimatedObjectState();
}

class _AnimatedObjectState extends State<AnimatedObject>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: const Offset(0, 0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation,child: Image.asset('assets/rocket_person.png'),);
  }
}
