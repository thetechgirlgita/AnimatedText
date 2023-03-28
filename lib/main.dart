import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Animated Text'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
              padding: EdgeInsets.all(40),
              child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText(
                  "I am Type Writer Text",
                  textStyle: TextStyle(
                    fontFamily: "Horizon",
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 300),
                )
              ],
              totalRepeatCount: 4,

              ),
              Divider(),

AnimatedTextKit(
  animatedTexts: [
    FadeAnimatedText(
      'Fade First',
      textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    ),
    // ScaleAnimatedText( // this is for Enlarge the text in animation.
    //   'Then Scale',
    //   textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'), 
    // ),
  ],
),
              
        ])));
  }
}
