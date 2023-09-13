import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infoware/controller.dart';
import 'package:just_audio/just_audio.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  AudioPageState createState() => AudioPageState();
}

class AudioPageState extends State<AudioPage> with WidgetsBindingObserver {
  GetController c = GetController();
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 9,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(46, 46, 46, 0.157),
                            offset: Offset(0, 4),
                            blurRadius: 8.0,
                            spreadRadius: 3.0)
                      ],
                      color: const Color.fromARGB(255, 42, 105, 97),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(top: 12.0, left: 12.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Sample Audios',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Urbanist-Medium',
                                letterSpacing: 0.8),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: const EdgeInsets.only(top: 2.0),
                          alignment: Alignment.center,
                          // color: Colors.black,
                          child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Obx(
                                () => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: const [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(10, 46, 46, 0.157),
                                          offset: Offset(0, 3),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.0)
                                    ],
                                    color: c.musicSelectedIndex.value != index
                                        ? Colors.white.withOpacity(0.4)
                                        : const Color.fromARGB(
                                            255, 63, 138, 128),
                                  ),
                                  margin: const EdgeInsets.only(
                                      left: 16.0, right: 16.0, bottom: 16.0),
                                  child: ListTile(
                                    onTap: () async {
                                      await player.setAsset(
                                          'assets/audios/wildflower.mp3');
                                      c.musicSelected.value = "wildflower.mp3";
                                      c.musicSelectedIndex.value = index;
                                      print(
                                          "selected ${c.musicSelected.value}");
                                      player.play();
                                      c.isPlaying.value = true;
                                    },
                                    titleAlignment:
                                        ListTileTitleAlignment.center,
                                    leading: const Text(
                                      'wildflower.mp3',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Urbanist-Regular',
                                          letterSpacing: 0.8),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 5,
                child: Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(46, 46, 46, 0.157),
                            offset: Offset(0, 4),
                            blurRadius: 8.0,
                            spreadRadius: 3.0)
                      ],
                      color: const Color.fromARGB(255, 42, 105, 97),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(top: 12.0, left: 12.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Imported Audios',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Urbanist-Medium',
                                letterSpacing: 0.8),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                              // color: Colors.blue,
                              alignment: Alignment.center))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: const LinearProgressIndicator(
                  color: Color.fromARGB(255, 95, 209, 181),
                  backgroundColor: Colors.white,
                  value: 0.1,
                ),
                // color: Colors.green,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  color: const Color(0xff00544F),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16.0),
                        padding: const EdgeInsets.only(left: 16.0),
                        alignment: Alignment.centerLeft,
                        child: Obx(
                          () => Text(
                            c.musicSelected.value != ""
                                ? 'Now Playing: ${c.musicSelected.value}'
                                : 'Select a music file',
                            style: TextStyle(
                                shadows: const [
                                  BoxShadow(
                                      color: Color.fromARGB(10, 0, 0, 0),
                                      offset: Offset(0, 5),
                                      blurRadius: 5,
                                      spreadRadius: 3)
                                ],
                                color: Colors.white.withOpacity(0.95),
                                fontFamily: 'Urbanist-Medium',
                                letterSpacing: 0.4),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 1,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.shuffle,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              )),
                          Expanded(
                            flex: 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 16.0),
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(40, 0, 0, 0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.skip_previous,
                                      color: Colors.teal[800],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(40, 0, 0, 0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Obx(
                                    () => IconButton(
                                      icon: Icon(
                                        (c.isPlaying.value || player.playing)
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        color: Colors.teal[800],
                                      ),
                                      onPressed: () async {
                                        if (c.musicSelected.value != "") {
                                          if (!c.isPlaying.value ||
                                              !player.playing) {
                                            c.isPlaying.value = true;
                                            player.play();
                                          } else if (c.isPlaying.value ||
                                              player.playing) {
                                            await player.pause();
                                            c.isPlaying.value = false;
                                          }
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16.0),
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(40, 0, 0, 0),
                                          blurRadius: 4.0,
                                          spreadRadius: 2.0,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.skip_next,
                                      color: Colors.teal[800],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.volume_up,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))
    ]);
  }
}
