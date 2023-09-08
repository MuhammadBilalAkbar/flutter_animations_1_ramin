import 'package:flutter/material.dart';

class SevenAnimatedPadding extends StatefulWidget {
  const SevenAnimatedPadding({super.key});

  @override
  State<SevenAnimatedPadding> createState() => _SevenAnimatedPaddingState();
}

class _SevenAnimatedPaddingState extends State<SevenAnimatedPadding> {
  double padding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Seven Animated Padding'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPadding(
            duration: const Duration(milliseconds: 500),
            padding: EdgeInsets.all(padding),
            child: Container(
              width: double.infinity,
              height: 150,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 12),
          Text('Padding: $padding'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              setState(() {
                padding = padding == 0 ? 100 : 0;
              });
            },
            child: const Text('Change Padding'),
          ),
        ],
      ),
    );
  }
}
