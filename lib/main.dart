import 'package:flutter/material.dart';
import 'package:flutter_animations_1_ramin/2_animated_align.dart';
import 'package:flutter_animations_1_ramin/3_animated_cross_fade.dart';
import 'package:flutter_animations_1_ramin/4_animated_opacity.dart';
import 'package:flutter_animations_1_ramin/5_animated_positioned.dart';
import 'package:flutter_animations_1_ramin/6_animated_size.dart';
import 'package:flutter_animations_1_ramin/7_animated_padding.dart';
import 'package:flutter_animations_1_ramin/8_animated_default_text_style.dart';

import '1_animated_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Builtin Animations in Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 24)),
      ),
      // home: const OneAnimatedContainer(),
      // home: const TwoAnimatedAlign(),
      // home: const ThreeAnimatedCrossFade(),
      // home: const FourAnimatedOpacity(),
      // home: const FiveAnimatedOpacity(),
      // home: const SixAnimatedSize(),
      // home: const SevenAnimatedPadding(),
      home: const EightAnimatedDefaultTextStyle(),
    );
  }
}
