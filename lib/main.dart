import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import './NavBar.dart';


void main() => (runApp(const Hassan()));

class Hassan extends StatelessWidget {
  const Hassan({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index=1;

  @override
  Widget build(BuildContext context) {
    final items=<Widget>[
       const Icon(Icons.home,size:30),
       const Icon(Icons.search,size:30),
       const Icon(Icons.person,size:30),
       const Icon(Icons.call,size:30),
       const Icon(Icons.location_on,size:30),
    ];
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Mainteance Services App'),
        backgroundColor: Colors.pinkAccent,
        shadowColor: Colors.pinkAccent,
        elevation: 10.0,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.pinkAccent,
        buttonBackgroundColor: Colors.pinkAccent,
        backgroundColor: Colors.transparent,
        height: 60,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 180),
        index:index,
        items: items,
        onTap: (index) =>setState(() => this.index=index),
        
        ),
    );
  }
}
