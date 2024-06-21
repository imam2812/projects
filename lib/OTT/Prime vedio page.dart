import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class ott6 extends StatefulWidget {
  ott6({ super.key});

  @override
  _ott6State createState() => _ott6State();
}

class _ott6State extends State<ott6> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            FlickVideoPlayer(
                flickManager: flickManager
            ),
            // SizedBox(height: 20,),
            // Container(
            //   height: 100,
            //   width: double.infinity,
            //   child: ListView(scrollDirection: Axis.horizontal, children: [
            //     SizedBox(width: 10,),
            //     TextButton(
            //       onPressed: () {},
            //       child: Center(
            //         child: Column(
            //           children: [
            //             Icon(Icons.play_circle_fill,color: Colors.blueAccent,),
            //             SizedBox(height: 5,),
            //             Text("Trailer",style: TextStyle(color: Colors.deepPurple),)
            //           ],
            //         ),
            //       ),
            //     ),
            //
            //     SizedBox(width: 35,),
            //
            //     TextButton(
            //         onPressed: () {},
            //         child: Column(
            //           children: [
            //             Icon(Icons.watch_later_outlined,color: Colors.blueAccent,),
            //
            //             SizedBox(height: 5,),
            //
            //             Text("Watchlist",style: TextStyle(color: Colors.deepPurple),)
            //           ],
            //         )),
            //
            //     SizedBox(width: 35,),
            //
            //     TextButton(
            //         onPressed: () {},
            //         child: Column(
            //           children: [
            //             Icon(Icons.thumb_up_off_alt_rounded,color: Colors.blueAccent,),
            //             SizedBox(height: 5,),
            //             Text("Like",style: TextStyle(color: Colors.deepPurple),)
            //           ],
            //         )),
            //
            //     SizedBox(width: 35,),
            //
            //     TextButton(
            //         onPressed: () {},
            //         child: Column(
            //           children: [
            //             Icon(Icons.thumb_down,color: Colors.blueAccent,),
            //             SizedBox(height: 5,),
            //             Text("Not For Me",style: TextStyle(color: Colors.deepPurple),)
            //           ],
            //         )),
            //
            //     SizedBox(width: 35,),
            //
            //     TextButton(
            //         onPressed: () {},
            //         child: Column(
            //           children: [
            //             Icon(Icons.share,color: Colors.blueAccent,),
            //             SizedBox(height: 5,),
            //             Text("Share",style: TextStyle(color: Colors.deepPurple),)
            //           ],
            //         )),
            //   ]),
            // ),
            // SizedBox(height: 20,),
            // Text("Arun and Divya's six-year relationship starts \nunraveling as they drift apart, raising the question \nof whether love can withstand such differences.",
            //   style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.greenAccent),),
            // SizedBox(height: 20,),
            // Padding(
            //   padding: const EdgeInsets.only(right: 130),
            //   child: Text(" Romantic * Drama's",
            //     style: TextStyle(
            //         fontSize: 30,
            //         fontWeight: FontWeight.bold,
            //         color:Colors.blueAccent ),),
            // ),
          ],
        ),
      ),
    );
  }
}