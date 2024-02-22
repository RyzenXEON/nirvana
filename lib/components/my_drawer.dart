import 'package:flutter/material.dart';
import 'package:nirvana/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [

          //top logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 50,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          //home tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0,top: 25),
            child: ListTile(
              title: const Text("P L A Y L I S T"),
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.primary,
              ),
              onTap: () =>Navigator.pop(context),
            ),
          ),

          //setting tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0,top: 25),
            child: ListTile(
              title: const Text("S E T T I N G S"),
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.primary,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsPage()));
              },
            ),
          ),

          
        ],
      ),
    );
  }
}