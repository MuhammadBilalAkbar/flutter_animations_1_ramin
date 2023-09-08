import 'package:flutter/material.dart';

class EightAnimatedDefaultTextStyle extends StatefulWidget {
  const EightAnimatedDefaultTextStyle({super.key});

  @override
  State<EightAnimatedDefaultTextStyle> createState() =>
      _EightAnimatedDefaultTextStyleState();
}

class _EightAnimatedDefaultTextStyleState
    extends State<EightAnimatedDefaultTextStyle> {
  double fontSize = 60;
  Color color = Colors.green;
  FontWeight fontWeight = FontWeight.bold;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Eight Animated Default Text Style'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  child: AnimatedDefaultTextStyle(
                    style: TextStyle(
                      color: color,
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                    ),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.bounceIn,
                    child: const Text('Flutter'),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fontSize = fontSize == 60 ? 30 : 60;
                      color =
                          color == Colors.green ? Colors.brown : Colors.green;
                      fontWeight = fontWeight == FontWeight.bold
                          ? FontWeight.normal
                          : FontWeight.bold;
                    });
                  },
                  child: const Text('Change TextStyle'),
                ),
              ],
            ),
          ),
        ));
  }
}
