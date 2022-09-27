import 'dart:convert';

import 'package:http/http.dart' as http;

class Second_Page {

  int track_id;
  Second_Page({required this.track_id});

  Future method_1() async{

    http.Response response = await http.get(Uri.parse(
        'https://api.musixmatch.com/ws/1.1/track.lyrics.get?track_id=${track_id}&apikey=66ffeb3378b42e27ac0e90f1593e16ef'));

    var track = await jsonDecode(response.body);
    var lyrics = await track['message']['body']['lyrics']['lyrics_body'];

    return lyrics;

  }



}
