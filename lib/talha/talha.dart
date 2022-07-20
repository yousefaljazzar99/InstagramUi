import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('اذكار الشبل المسلم'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: double.infinity,
              height: 500,
              child: ImageSlideshow(
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children: [
                  Image.asset(
                    'assets/image/0.png',
                  ),
                  Image.asset(
                    'assets/image/1.png',
                  ),
                  Image.asset(
                    'assets/image/0.png',
                  ),
                ],
                onPageChanged: (value) {
                  print('Page changed: $value');
                },
                isLoop: true,
              ),
            ),
            // Center(
            //   child: Container(
            //     margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            //     width: double.infinity,
            //     // height: 100.h,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       // color: Colors.amber,
            //     ),
            //     child: Image.asset('assets/image/0.png'),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Text('Back'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},

                    //labal('التالي'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: Row(
                      children: const [
                        Text('Next'),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   //  backgroundColor: Color.fromARGB(255, 180, 255, 182),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.black,
      //       icon: Icon(
      //         Icons.home,
      //         //color: Colors.white,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.search,
      //         //color: Colors.white,
      //       ),
      //       label: 'search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //         //color: Colors.white,
      //       ),
      //       label: 'profile',
      //     ),
      //   ],
      // ),
    );
  }
}
