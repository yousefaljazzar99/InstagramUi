import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                child: const Text(
                  'Go to screen3',
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/screen3');
                }),
          ),
          Center(
            child: ElevatedButton(
              child: const Text(
                'Back',
              ),
              onPressed: () {
                Navigator.pop(
                    context, 'data come back fram screen 2 to screeen 1 ');
              },
            ),
          ),
        ],
      ),
    );
  }
}
