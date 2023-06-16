import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:video_player/video_player.dart';
import 'package:toko_abah/main.dart';

class ScreenAwal extends StatefulWidget {
  const ScreenAwal({super.key});

  @override
  State<ScreenAwal> createState() => _ScreenAwalState();
}

class _ScreenAwalState extends State<ScreenAwal> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/vid1.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size?.width ?? 0,
                height: _controller.value.size?.width ?? 0,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Welcome to Abah FastFood',
                    style: GoogleFonts.poppins(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            color: Colors.redAccent,
                          ),
                        ]),
                  ),
                  Text(
                    'Pelase Touch The Button to Login',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            color: Colors.greenAccent,
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  GestureDetector(
                      onLongPress: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const MyNavBar();
                        }));
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.fingerprint_rounded,
                          size: 60,
                          shadows: [
                            Shadow(
                                blurRadius: 50,
                                offset: Offset(0, 0),
                                color: Color.fromARGB(255, 0, 255, 234))
                          ],
                        ),
                        radius: 40,
                        // backgroundImage: AssetImage('assets/images/finger.png'),
                      )),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}




// Container(
//                             child: Row(
//                               children: [
//                                 IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(
//                                       Icons.chevron_left,
//                                       color: Colors.red,
//                                     )),
//                                 Container(
//                                   child: Text('0'),
//                                   color: Colors.red,
//                                 ),
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(
//                                     Icons.chevron_right,
//                                     color: Colors.red,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
