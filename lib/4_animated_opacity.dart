import 'package:flutter/material.dart';

class FourAnimatedOpacity extends StatefulWidget {
  const FourAnimatedOpacity({super.key});

  @override
  State<FourAnimatedOpacity> createState() => _FourAnimatedOpacityState();
}

class _FourAnimatedOpacityState extends State<FourAnimatedOpacity> {
  double opacityLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Four Animated CrossFade'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 1),
              child: Image.network(
                'https://images.unsplash.com/photo-1517699921475-26c786af7158?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 1 ? 0.3 : 1;
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
