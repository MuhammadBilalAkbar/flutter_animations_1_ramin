import 'package:flutter/material.dart';

class TwoAnimatedAlign extends StatefulWidget {
  const TwoAnimatedAlign({super.key});

  @override
  State<TwoAnimatedAlign> createState() => _TwoAnimatedAlignState();
}

class _TwoAnimatedAlignState extends State<TwoAnimatedAlign> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Two Animated Align'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            width: double.infinity,
            height: 250,
            color: Colors.yellow,
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 700),
              alignment: isSelected ? Alignment.topRight : Alignment.bottomLeft,
              curve: Curves.decelerate,
              child: const FlutterLogo(size: 90),
            ),
          ),
        ),
      ),
    );
  }
}
