// ignore_for_file: use_key_in_widget_constructors

import 'dart:developer';

import 'package:first/nav/screens/screen3..dart';
import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(context) {
    return WillPopScope(
      onWillPop: (() {
        if (Navigator.canPop(context)) {
          Navigator.pop(context, 'hello');
          return Future.value(true);
          log('rrrrrrrrrrrrrrrrrrrrrrr');
        } else {
          log('Stooooooooooooooooooooooooooooop');
          return Future.value(false);
        }
      }),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('screen 1'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  child: const Text(
                    'Go to screen2',
                  ),
                  onPressed: () async {
                    Navigator.pushNamed(context, '/screen2');
                  }
                  // onPressed: () async {
                  //   dynamic x = await Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => screen2()));
                  //   print(x);
                  // }
                  ),
            ),
            Center(
              child: ElevatedButton(
                  child: const Text(
                    'Go to screen3',
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => screen3()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
