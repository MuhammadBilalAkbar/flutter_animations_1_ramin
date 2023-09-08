import 'package:flutter/material.dart';

class SixAnimatedSize extends StatefulWidget {
  const SixAnimatedSize({super.key});

  @override
  State<SixAnimatedSize> createState() => _SixAnimatedSizeState();
}

class _SixAnimatedSizeState extends State<SixAnimatedSize> {
  double size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Six Animated Size'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              size = size == 100 ? 250 : 100;
            });
          },
          child: Container(
            decoration:
                BoxDecoration(border: Border.all(width: 3, color: Colors.red)),
            child: AnimatedSize(
              duration: const Duration(seconds: 1),
              curve: Curves.bounceOut,
              child: FlutterLogo(size: size)
              // Image.network(
              //   'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80',
              //   fit: BoxFit.cover,
              //   width: size,
              //   height: size,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
