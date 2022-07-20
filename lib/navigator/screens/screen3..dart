import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen 3'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            'Back',
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
