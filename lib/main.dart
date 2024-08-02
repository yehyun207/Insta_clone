import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';

void main() {
  runApp(const InstaCloneApp());
}

class InstaCloneApp extends StatelessWidget {
  const InstaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatefulWidget {
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}

class _InstaCloneHomeState extends State<InstaCloneHome> {
  late int index;


  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0 ? AppBar(
        title: Text('Instagram', style: GoogleFonts.lobsterTwo(
            fontSize: 32, fontWeight: FontWeight.normal)),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_outline, size: 32), onPressed: () {
            print('Tab favorite');
          },
          ),
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, size: 32,), onPressed: () {
            print('Tab favorite');
          },
          )
        ],
      ) : null,
      body: InstaBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(() => index = newIndex),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 28), label: 'search'),
        ],
      ),
    );
  }
}
