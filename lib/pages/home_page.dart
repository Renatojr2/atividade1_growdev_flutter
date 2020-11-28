import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _calc = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atividade'),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            _calc = 1;
            setState(() {});
          },
          onTap: () {
            _calc *= 2;
            setState(() {});
          },
          child: Text(
            'calc: $_calc',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
