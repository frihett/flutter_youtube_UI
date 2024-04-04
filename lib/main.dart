import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Color(0xFF0F0F0F),
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Color(0xFF0F0F0F),
        ),
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF0F0F0F),
          centerTitle: false,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: [
                Image.asset(
                  'assets/images/youtube_logo.png',
                  width: 86,
                ),
                Spacer(),
                Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                ClipOval(
                  //동그랗게만 만들어주는거임
                  child: Container(
                    width: 24,
                    height: 24,
                    color: const Color(0XFFF5F5F5),
                    child: const Icon(
                      Icons.person_3,
                      size: 16,
                      color: Color(0XFFD1D5DB),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  color: const Color(0xFF0F0F),
                  width: double.infinity,
                  height: 48,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: Icon(
                          Icons.explore_outlined,
                          size: 24,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: 108,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Under 10 min',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: 62,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Music',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: 68,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xFF272727),
                            borderRadius: BorderRadius.circular(4)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Manga',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      child: Image.network(
                        'https://file2.nocutnews.co.kr/newsroom/image/2022/11/27/202211271811201764_0.jpg',
                        fit: BoxFit.cover,
                      ),
                      // 영상,

                      width: double.infinity,
                      height: 250,
                      color: Colors.yellow,
                    ),
                    Positioned(
                      right: 20,
                      bottom: 15,
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text('20:15'),
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          child: ClipOval(
                            child: Image.network(
                              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fchannel%2FUCnXNukjRxXGD8aeZGRV-lYg&psig=AOvVaw0lIi40qYLeWCIv9PhkrTMX&ust=1712320990260000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJC4xPXKqIUDFQAAAAAdAAAAABAE',
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 20,
                          height: 20,
                        ),
                      ),

                      Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('토트넘 400번째 경기에서 웃지 못한 손흥민'),
                              Text('dd',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  )),
                            ]),
                      ), //2 text  - 컬럼 안에

                      Container(
                        child: Icon(Icons.more_vert),
                      ), //1 icon  - 컨테이너 안에
                    ],
                  ),
                  //공간
                  width: double.infinity,
                  height: 80,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),

                  child: Container(
                    color: Colors.black,
                    child: Row(
                      
                    
                        children: [
                      Image.asset(
                        'assets/images/shorts_logo.png',
                        width: 86,
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.all(10),

                      child:SingleChildScrollView(

                        scrollDirection: Axis.horizontal, // 수평 스크롤을 위해 scrollDirection 설정
                        child: Row(
                          
                          children: [

                            Container(padding: EdgeInsets.all(8.0),height: 250,width:150,child: Image.network('https://img.khan.co.kr/news/2023/10/15/l_2023101601000427900044691.jpg',fit: BoxFit.cover,)),
                            Container(padding: EdgeInsets.all(8.0),height: 250,width:150,child: Image.network('https://img.khan.co.kr/news/2023/10/15/l_2023101601000427900044691.jpg',fit: BoxFit.cover,)),
                            Container(padding: EdgeInsets.all(8.0),height: 250,width:150,child: Image.network('https://img.khan.co.kr/news/2023/10/15/l_2023101601000427900044691.jpg',fit: BoxFit.cover,)),
                            Container(padding: EdgeInsets.all(8.0),height: 250,width:150,child: Image.network('https://img.khan.co.kr/news/2023/10/15/l_2023101601000427900044691.jpg',fit: BoxFit.cover,)),
                          ],
                        ),
                      ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            height: 48.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: Colors.white,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                        ),
                        Text(
                          'Shorts',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 38,
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.subscriptions_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'My Lisf',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Column(
                      children: [
                        Icon(
                          Icons.video_library_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Library',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
