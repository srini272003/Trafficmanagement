import 'package:flutter/material.dart';

void main() => runApp(TrafficSignalApp());

class TrafficSignalApp extends StatefulWidget {
  @override
  _TrafficSignalAppState createState() => _TrafficSignalAppState();
}

class _TrafficSignalAppState extends State<TrafficSignalApp> {
  Color _currentSignalColor = Colors.red;

  void _changeSignalColor() {
    setState(() {
      if (_currentSignalColor == Colors.red) {
        _currentSignalColor = Colors.green;
      } else if (_currentSignalColor == Colors.green) {
        _currentSignalColor = Colors.yellow;
      } else {
        _currentSignalColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Traffic Signal Control'),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 300,
            color: _currentSignalColor,
            child: FlatButton(
              onPressed: _changeSignalColor,
              child: Text(
                'Change Signal',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
