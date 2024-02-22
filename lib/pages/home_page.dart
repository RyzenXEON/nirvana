import 'package:flutter/material.dart';
import 'package:nirvana/components/my_drawer.dart';
import 'package:nirvana/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

          //return list view of songs
          return ListView.builder(
            itemBuilder: (context, index) => ListTile(), // Corrently woring here_____________________________________
          );
        },
      ),
    );
  }
}
