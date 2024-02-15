import 'package:flutter/material.dart';
import 'package:nirvana/pages/home_page.dart';
import 'package:nirvana/themes/light_mode.dart';

void main() {
  runApp(const nirvana());
}

class nirvana extends StatelessWidget {
  const nirvana({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: lightMode,
    );
      
  }
}
