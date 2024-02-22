import 'package:flutter/material.dart';
import 'package:nirvana/pages/home_page.dart';
import 'package:nirvana/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const nirvana()
    ),
  );
}

class nirvana extends StatelessWidget {
  const nirvana({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
      
  }
}
