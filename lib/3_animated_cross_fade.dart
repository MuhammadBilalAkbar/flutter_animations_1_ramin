import 'package:flutter/material.dart';

class ThreeAnimatedCrossFade extends StatefulWidget {
  const ThreeAnimatedCrossFade({super.key});

  @override
  State<ThreeAnimatedCrossFade> createState() => _ThreeAnimatedCrossFadeState();
}

class _ThreeAnimatedCrossFadeState extends State<ThreeAnimatedCrossFade> {
  bool isFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Three Animated CrossFade'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AnimatedCrossFade(
              crossFadeState: isFirst
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 700),
              firstChild: Image.network(
                'https://images.unsplash.com/photo-1619364744729-f0d1fa79bc79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1400&q=80',
                fit: BoxFit.cover,
                height: 250,
              ),
              secondChild: Image.network(
                'https://images.unsplash.com/photo-1617578324381-6155fbe640d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2748&q=80',
                fit: BoxFit.cover,
                height: 250,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFirst = !isFirst;
                });
              },
              child: const Text('Click'),
            ),
          ],
        ),
      ),
    );
  }
}
