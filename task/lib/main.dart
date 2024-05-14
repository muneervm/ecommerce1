import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task/c2.dart'; 

void main() {
  runApp(ContactBookApp());
}

class ContactBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Book',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.network(
            'https://lottie.host/55e35ea6-25fd-4ed2-bc88-4d98026823f6/Gn6jXX3K3Q.json',
            repeat: true,
            reverse: true,
            animate: true,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome to Contact Book',
                  style: TextStyle(fontSize: 24.0, color: Colors.black),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactBook()), // Navigate
                    );
                  },
                  child: Text('OPEN'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
