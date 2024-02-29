import 'package:flutter/material.dart';
import 'package:nirvana/components/my_drawer.dart';
import 'package:nirvana/models/playlist_provider.dart';
import 'package:nirvana/models/song.dart';
import 'package:nirvana/pages/song_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    //get playlist
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  void goToSong(int songIndex){
    //upadte current song index
    playlistProvider.currentSongIndex = songIndex;

    //navigate to playing page
    Navigator.push(
      context, 
      MaterialPageRoute(builder:(context) => SongPage(),)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Center(child: Text("P L A Y L I S T       ")),
      ),
      drawer: const MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder: (context, value, child) {
          //playlist
          final List<Song>playlist =value.playlist;

          //return list view of songs
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context, index) {
              //fetch songs
              final Song song =playlist[index];

              //return listtile
              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image.asset(song.albumArtImagePath),
                onTap: ()=>goToSong(index),
              );
            }, 
          );
        },
      ),
    );
  }
}
