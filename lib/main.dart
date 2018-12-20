import 'package:flutter/material.dart';
import 'package:manager/pages//home/index.dart';
import 'package:manager/pages/mine/index.dart';
import 'package:manager/pages/customer/index.dart';
import 'package:manager/pages/thread/index.dart';
import 'package:manager/pages/trends/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Customer Relationship Management'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _bottomNavigationColor = Colors.blue;
  int _bottomNavigationIndex = 0;
  List<Widget> pages = List<Widget>();

  @override
  void initState() {
    pages..add(HomePage())..add(TrendsPage())..add(CustomerPage())..add(
        ThreadPage())..add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: pages[_bottomNavigationIndex],
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _bottomNavigationColor),
              title:
              Text("首页", style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: _bottomNavigationColor),
              title: Text("销售动态",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.recent_actors, color: _bottomNavigationColor),
              title: Text("客户管理",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, color: _bottomNavigationColor),
              title: Text("销售线索",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: _bottomNavigationColor),
              title:
              Text("我的", style: TextStyle(color: _bottomNavigationColor))),
        ],
        currentIndex: _bottomNavigationIndex,
        onTap: (int index) {
          setState(() {
            _bottomNavigationIndex = index;
          });
        },
      ),
    );
  }
}
