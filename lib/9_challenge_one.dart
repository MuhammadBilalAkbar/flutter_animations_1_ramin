import 'package:flutter/material.dart';
import 'package:flutter_animations_1_ramin/9_list_item.dart';

class NineChallengeOne extends StatefulWidget {
  const NineChallengeOne({super.key});

  @override
  State<NineChallengeOne> createState() => _NineChallengeOneState();
}

class _NineChallengeOneState extends State<NineChallengeOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Challenge One'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListItem(title: 'Item ${index + 1}'),
      ),
    );
  }
}
