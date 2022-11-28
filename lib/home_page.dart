import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:than_bote_day/glass_box.dart';
import 'package:than_bote_day/pages/first_page.dart';
import 'package:than_bote_day/pages/four_page.dart';
import 'package:than_bote_day/pages/second_page.dart';
import 'package:than_bote_day/pages/six_page.dart';
import 'package:than_bote_day/pages/third_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pages/five_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  final player = AudioPlayer();
  final _controller = PageController();
  double value = 6;
  bool _loadingStatus = true;

  @override
  void initState() {
    super.initState();
    _loadCounter();
    player.setAsset('assets/audios/bonk.mp3');
  }

  Future<void> _playJustAudio() async {
    player.setAsset('assets/audios/bonk.mp3');
    await player.play();
  }

  //Incrementing counter after click
  Future<void> _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  Future<void> _resetCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) - 0;
      _counter = 0;
      prefs.setInt('counter', _counter);
    });
  }

// dialog
  Future openDialog() => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('အစမှ ပြန်စိပ်မည် သေချာပါသလား?'),
          actions: [
            TextButton(
              onPressed: noClick,
              child: const Text(
                'No',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: yes,
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      );

  void noClick() {
    Navigator.of(context).pop();
  }

  void yes() {
    Navigator.of(context).pop();
    _resetCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(alignment: AlignmentDirectional.bottomStart, children: [
        PageView(controller: _controller, children: [
          FirstPage(getFontsize: value),
          SecondPage(getFontsize: value),
          ThirdPage(getFontsize: value),
          FourPage(getFontsize: value),
          FivePage(getFontsize: value),
          SixPage(getFontsize: value),
        ]),
        GlassBox(
          child: Column(
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: 6,
                effect: JumpingDotEffect(
                    activeDotColor: Colors.amber,
                    dotColor: Colors.teal,
                    dotHeight: 5,
                    verticalOffset: 20),
              ),
              Expanded(
                flex: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          if (_counter != 0) {
                            openDialog();
                          }
                        },
                        icon: const Icon(
                          Icons.replay_outlined,
                          color: Colors.red,
                        )),
                    Text(
                      _counter.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.green[900]),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      onLongPress: () {
                        _playJustAudio();
                        _incrementCounter();
                      },
                      onPressed: () {
                        // _playJustAudio();
                        _incrementCounter();
                      },
                      child: const Icon(
                        Icons.energy_savings_leaf,
                        size: 100,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Slider(
                  min: 0,
                  max: 10,
                  // divisions: 5,
                  value: value,
                  onChanged: (double newValue) {
                    setState(() {
                      value = newValue;
                    });
                  },
                ),
              ),
              Expanded(
                child: const SizedBox(
                  height: 4,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
