import 'package:flutter/material.dart';

class TenChallengeTwo extends StatefulWidget {
  const TenChallengeTwo({super.key});

  @override
  State<TenChallengeTwo> createState() => _TenChallengeTwoState();
}

class _TenChallengeTwoState extends State<TenChallengeTwo> {
  bool isSmall = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Challenge Two'),
        centerTitle: true,
      ),
      body:  Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSmall = !isSmall;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeInOut,
              width: isSmall ? 80 : 200,
              height: 80,
              child: isSmall ? buildShrink() : buildStretch(),
            ),
          ),
        ),
    );
  }
}

Widget buildStretch() => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.deepPurpleAccent,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Text(
          'ADD ME',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );

Widget buildShrink() => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.deepPurpleAccent,
      ),
      child: const Icon(Icons.people, color: Colors.white),
    );
