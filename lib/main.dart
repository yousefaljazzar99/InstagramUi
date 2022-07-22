import 'package:easy_localization/easy_localization.dart';
import 'package:first/instegram/View/instegramUi.dart';
import 'package:first/register/form_Ui.dart';

import 'package:first/talha/talha.dart';
import 'package:first/transUi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  //await EasyLocalization.ensureInitialized();
  runApp(MyApp()
      // EasyLocalization(
      //     supportedLocales: [Locale('en'), Locale('ar')],
      //     path: 'assets/langs', // <-- change the path of the translation files
      //     fallbackLocale: Locale('en'),
      //     child:
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
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          //localizationsDelegates: context.localizationDelegates,
          // supportedLocales: context.supportedLocales,
          //  locale: context.locale,
          debugShowCheckedModeBanner: false,
          home: FormUi(),
          // theme: isDark ? ThemeData.dark() : ThemeData.light(),
          // routes: {
          //   '/': (context) => screen1(),
          //   '/screen2': (context) => screen2(),
          //   '/screen3': (context) => screen3(),
          // },

          //ChangeColor(changeTheme, isDark),
        );
      },
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
