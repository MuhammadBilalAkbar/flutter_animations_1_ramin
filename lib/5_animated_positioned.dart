import 'package:flutter/material.dart';

class FiveAnimatedOpacity extends StatefulWidget {
  const FiveAnimatedOpacity({super.key});

  @override
  State<FiveAnimatedOpacity> createState() => _FiveAnimatedOpacityState();
}

class _FiveAnimatedOpacityState extends State<FiveAnimatedOpacity> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Five Animated Positioned'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 150,
              height: 300,
              color: Colors.grey[400],
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              width: 150,
              height: 150,
              top: isSelected ? 0 : 150,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Tap me'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
