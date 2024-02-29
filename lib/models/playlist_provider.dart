import 'package:flutter/material.dart';
import 'package:nirvana/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
        songName: "Popolar",
        artistName: "Weeknd",
        albumArtImagePath: "assets/image/popular.jpg",
        audioPath: "assets/music/popular.mp3"
      ),

    Song(
        songName: "Not Popolar",
        artistName: "Weeknd",
        albumArtImagePath: "assets/image/popular2.jpg",
        audioPath: "assets/music/popular.mp3"
      ),

    Song(
        songName: "Maybe Popolar",
        artistName: "Weeknd",
        albumArtImagePath: "assets/image/popular3.jpg",
        audioPath: "assets/music/popular.mp3"
      ),

  ];

  //current playing song 
  int? _currentSongIndex;


  /*

  Getter
  
  */

  List <Song>get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  
  /* 
  
  Setter
  
   */
  set currentSongIndex(int? newIndex){
    //update current index
    _currentSongIndex =newIndex;

    //update UI
    notifyListeners();
  }
}
