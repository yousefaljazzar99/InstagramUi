import 'package:first/View/Test.dart';
import 'package:first/View/instegramUi.dart';
import 'package:first/data/news_app/view/screens/all_news_screen.dart';
import 'package:first/data/news_app/view/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool isDark = false;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: MainScreen(),

      //ChangeColor(changeTheme, isDark),
    );
  }
}


// class test extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         color: Colors.red,
//         height: MediaQuery.of(context).size.height/8,
//         width: MediaQuery.of(context).size.width/8,

//       ),
//     );
//   }
// }
