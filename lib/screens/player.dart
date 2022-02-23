// https://github.com/Suganth-S/Flutter_Music_Player_/blob/master/lib/DetailPage.dart

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resonance/model/data.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  //8.Setting the player UI Data
  IconData btnIcon = Icons.play_arrow;
  var bgColor = const Color(0xFF03174C);
  var iconHoverColor = const Color(0xFF065BC3);

  Duration duration = new Duration();
  Duration position = new Duration();

  //9.Now add music player
  AudioPlayer audioPlayer = new AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  bool isPlaying = false;
  String currentSong = "";

  void playMusic(String url) async {
    if (isPlaying && currentSong != url) {
      audioPlayer.pause();
      int result = await audioPlayer.play(url);
      if (result == 1) {
        setState(() {
          currentSong = url;
        });
      }
    } else if (!isPlaying) {
      int result = await audioPlayer.play(url);
      if (result == 1) {
        setState(() {
          isPlaying = true;
          btnIcon = Icons.pause;
          //from now we hear song
        });
      }
    }
    //11
    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        duration = event;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              // height: 600,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/girl.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [bgColor.withOpacity(0.4), bgColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 52.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(50.0)),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'PLAYLIST',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6)),
                                ),
                                Text('Best Vibes of the Week',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Icon(
                              Icons.playlist_add,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('Hare Krishna Song ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30)),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  'HG Swarup Das Ft. Shreya Ghoshal',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // Spacer(),
          Slider.adaptive(
            //change value after 11 step, and add min and max
            value: position.inSeconds.toDouble(),
            min: 0.0,
            max: duration.inSeconds.toDouble(),
            onChanged: (value) {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Icon(
                Icons.repeat,
                color: iconHoverColor,
              ),
              Spacer(),
              Icon(
                Icons.fast_rewind,
                color: Colors.white54,
                size: 42.0,
              ),
              SizedBox(width: 32.0),
              Container(
                decoration: BoxDecoration(
                    color: iconHoverColor,
                    borderRadius: BorderRadius.circular(50.0)),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 42.0,
                      icon: Icon(btnIcon),
                      color: Colors.white,
                    )),
              ),
              SizedBox(width: 32.0),
              Icon(
                Icons.fast_forward,
                color: Colors.white54,
                size: 42.0,
              ),
              Spacer(),
              Icon(
                Icons.shuffle,
                color: iconHoverColor,
              ),
              Spacer(),
            ],
          ),
          // Spacer(),
          // SizedBox(height: 58.0),
          Spacer(),
        ],
      ),
    );
  }
}
