import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:resonance/screens/player.dart';
import 'package:resonance/widgets/bottom_nav_bar.dart';
import 'package:resonance/screens/email.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.black87),
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _counter = '';

  ///Audio player
  AudioPlayer? audioPlayer;
  late AudioCache audioCache;

  @override
  void initState() {
    super.initState();

    setState(() {
      audioPlayer = AudioPlayer();
      audioCache = AudioCache(fixedPlayer: audioPlayer);
    });
  }

  void playAudio() {
    audioPlayer!.stop();

    audioCache.play('ringtone.mp3');
  }

  void stopAudio() {
    audioPlayer!.stop();
  }

  @override
  void dispose() {
    audioPlayer!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    audioPlayer!.getCurrentPosition().then((value) {
      setState(() {
        _counter = value.toString();
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Abhi',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: playAudio,
            tooltip: 'Play',
            child: const Icon(Icons.play_arrow),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: stopAudio,
            tooltip: 'Stop',
            child: const Icon(Icons.stop),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
