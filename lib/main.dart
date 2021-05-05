import 'package:flutter/material.dart';
import 'package:flutter_netflix_clon/src/netflix_appbar.dart';
import 'package:flutter_netflix_clon/src/page/page_top_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(backgroundColor: Colors.transparent)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isTop = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.black,
            appBar: NetflixAppBar(
              istop: _isTop,
            ),
            body: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                return IsTop(notification);
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PageTopSection(_isTop),
                    Container(
                      color: Colors.grey,
                      height: 2000,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool IsTop(ScrollNotification notification) {
    setState(() {
      if (notification.metrics.pixels == 0) {
        _isTop = true;
      } else {
        _isTop = false;
      }
    });
    return true;
  }
}
