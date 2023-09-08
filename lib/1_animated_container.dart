import 'package:flutter/material.dart';

class OneAnimatedContainer extends StatefulWidget {
  const OneAnimatedContainer({super.key});

  @override
  State<OneAnimatedContainer> createState() => _OneAnimatedContainerState();
}

class _OneAnimatedContainerState extends State<OneAnimatedContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('One Animated Container'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            color: isSelected ? Colors.cyan : Colors.grey,
            width: isSelected ? 200 : 300,
            height: isSelected ? 300 : 200,
            padding:
                isSelected ? const EdgeInsets.all(30) : const EdgeInsets.all(0),
            curve: Curves.bounceOut,
            child: const Center(
              child: Text('One Animated Container'),
            ),
          ),
        ),
      ),
    );
  }
}
