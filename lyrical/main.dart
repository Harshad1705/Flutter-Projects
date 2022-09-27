import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'second_page.dart';
import 'lyrics_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool t_f = false;

  List<Song> songs = [];

  @override
  void initState() {
    super.initState();
    getMusicDetail();
  }

  Future<dynamic> getMusicDetail() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=66ffeb3378b42e27ac0e90f1593e16ef'));

    var jsonData = await jsonDecode(response.body);
    var track = await jsonData['message']['body']['track_list'];
    var length = await track.length;
    for (var i = 0; i < length; i++) {
      var track_id = await track[i]['track']['track_id'];
      var track_name = await track[i]['track']['track_name'];
      Song song = await Song(name: track_name, track_id: track_id);
      songs.add(song);
    }

    setState(() {
      t_f = true;
    });
    // print(songs[0].name);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        body: SafeArea(
            child: t_f
                ? Container(
                    color: Colors.white24,
                    padding: EdgeInsets.all(20.0),
                    child: Card(
                      color: Colors.white24,
                      child: ListView.builder(
                        itemCount: songs.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              songs[index].name,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            onTap: () async {
                              // print(songs[index].track_id);
                              Second_Page page =
                                  Second_Page(track_id: songs[index].track_id);
                              var lyrics = await page.method_1();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Lyrics(lyrics),
                                  ));
                            },
                          );
                        },
                      ),
                    ),
                  )
                : Center(child: CircularProgressIndicator())),
      ),
    );
  }
}

//
// class SongsList extends StatelessWidget {
//   List<Song> songs;
//   int length ;
//   SongsList(this.length,this.songs);
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         itemCount: length,
//         itemBuilder: (BuildContext context, int count) {
//           return Container(
//             child:Text(songs[0].name),
//           );
//         },
//       ),
//     );;
//   }
// }
//
// class SongsTiles extends StatelessWidget {
//   int length;
//   SongsTiles(this.length);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text( );
//   }
// }

class Song {
  var name;
  var track_id;

  Song({this.name, this.track_id});
}
