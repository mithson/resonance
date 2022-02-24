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
                                  'Now Playing',
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
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Hare Krishna Song',
                                      // softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    'HG Swarup Das Ft. Shreya Ghoshal',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Slider.adaptive(
              //change value after 11 step, and add min and max
              value: position.inSeconds.toDouble(),
              min: 0.0,
              max: duration.inSeconds.toDouble(),
              onChanged: (value) {},
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                '00:00',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              Spacer(),
              Text('4:35',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                  )),
              SizedBox(
                width: 20,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Icon(
                Icons.repeat,
                color: Colors.white.withOpacity(0.6),
              ),
              Spacer(),
              Icon(
                Icons.skip_previous_rounded,
                color: Colors.white,
                size: 42.0,
              ),
              SizedBox(width: 32.0),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
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
                Icons.skip_next_rounded,
                color: Colors.white,
                size: 42.0,
              ),
              Spacer(),
              Icon(
                Icons.shuffle,
                color: Colors.white.withOpacity(0.6),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.volume_up_rounded,
                color: Colors.white.withOpacity(0.6),
                size: 30,
              ),
              Spacer(),
              Icon(
                Icons.share,
                color: Colors.white.withOpacity(0.6),
                size: 25,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.list_rounded,
                color: Colors.white.withOpacity(0.6),
                size: 40,
              ),
              SizedBox(
                width: 35,
              )
            ],
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
