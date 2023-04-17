import 'package:flutter/material.dart';
import 'package:ttsrooms/portal.dart';
import 'package:video_player/video_player.dart';

import 'main.dart';

main(){
  runApp(VideoPlayerApp());
}

class VideoPlayerApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.network('assets/videos/TTS.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title: Text('rooms TUTO'),
        backgroundColor: const Color(0xFF212529),
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => portal()),
              );
            },
            child: Image.asset('assets/images/logotts.jpg'),
          ),
        ),


      ),
      body: Container(
        child: Column(
          children:[
            AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in nunc massa. Aliquam non lectus vel magna molestie iaculis. Integer gravida arcu ac enim tristique, id congue lorem auctor. Duis ac purus risus. Vestibulum condimentum magna quis lectus auctor, eget blandit lacus tempor. Sed non diam non ex finibus euismod. ',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Sed porttitor in leo in facilisis. Praesent vel justo ac urna blandit auctor at vel sapien. Nunc congue dolor id nisi varius, in consectetur elit efficitur. Sed sed urna ipsum. Donec commodo, velit ac elementum bibendum, enim leo tempor elit, id commodo mi libero sed odio. Donec quis dui eget felis ultrices sollicitudin a eu mi. Duis eleifend velit nec velit laoreet commodo. Nulla ultrices ante non ligula placerat, non egestas augue cursus. ',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
