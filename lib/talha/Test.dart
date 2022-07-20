import 'package:first/screens/faverate.dart';
import 'package:first/screens/home.dart';
import 'package:first/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  Function function;
  bool isDark;
  ChangeColor(this.function, this.isDark);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Text2();
  }
}

class Text2 extends State<ChangeColor> {
  Color c1 = Colors.black;
  Color c2 = Colors.white;
  int index = 0;

  String Content = 'Home';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          //////////////////////
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    //  child: Text('o'),
                    backgroundImage: NetworkImage(
                        'https://scontent.fgza9-1.fna.fbcdn.net/v/t39.30808-1/287712463_3206591236274690_3147253001728781126_n.jpg?stp=dst-jpg_p160x160&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_ohc=1p5_tXl3GVsAX9Ruv_Q&_nc_ht=scontent.fgza9-1.fna&oh=00_AT-4_oGSN4tBPBeMdf0JTY5zshctono78wWhaVJIo_D1aA&oe=62C1BC1D'),
                  ),
                  accountName: Text('Yousef Aljazzar'),
                  accountEmail: Text('Yousef.n.aljazzar@gmail.com')),
              ListTile(
                subtitle: Text('Go to heme'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  index = 0;
                  Content = 'Home';
                  Navigator.pop(context);

                  setState(() {});
                },
              ),
              ListTile(
                subtitle: Text('Go to favorite'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.favorite),
                title: Text('Favorite'),
                onTap: () {
                  index = 1;
                  Content = 'Favorite';
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              ListTile(
                subtitle: Text('Go to Profile'),
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  index = 2;
                  Content = 'profile';
                  Navigator.pop(context);

                  setState(() {});
                },
              ),
            ],
          ),
          ///////////////////
        ),
        appBar: AppBar(
          actions: [
            Switch(
                value: widget.isDark,
                onChanged: (value) {
                  widget.function(value);
                  setState(() {});
                }),
          ],
          centerTitle: true,
          title: Text(
            'Stateful',
            style: TextStyle(color: c1 == Colors.black ? c2 : Colors.black),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('Home'),
            ),
            Tab(
              child: Text('Fovarate'),
            ),
            Tab(
              child: Text('Profile'),
            ),
          ]),

          //  backgroundColor: c1,
          //elevation: 0,
        ),
        body: TabBarView(
          children: [
            HomeSecreen(),
            FaverateScreen(),
            ProfileScreen(),
          ],
        ),

        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Container(
        //       margin: EdgeInsets.symmetric(horizontal: 10),
        //       child: Row(
        //         children: [
        //           Text(widget.isDark ? 'ON' : 'OFF'),
        //           const Spacer(),
        //           Switch(
        //               value: widget.isDark,
        //               onChanged: (value) {
        //                 widget.function(value);
        //                 setState(() {});
        //               }),
        //         ],
        //       ),
        //     ),
        //     Spacer(),
        //     ElevatedButton(
        //       onPressed: () {
        //         setState(() {});
        //       },
        //       child: Text(
        //         this.Content = Content,
        //         textAlign: TextAlign.center,
        //       ),
        //     )
        //   ],
        // ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (i) {
            index = i;
            if (index == 0) {
              Content = 'Home';
            } else if (index == 1) {
              Content = 'Favorite';
            } else if (index == 2) {
              Content = 'Profile';
            }

            setState(() {});
          },
          currentIndex: index,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
