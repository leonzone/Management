import 'package:flutter/material.dart';
import 'package:manager/pages/home/widgets/cards.dart';

/// 主页
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Cards(),
            Text("HOMEs")
          ],
        ),
      ),
    );
  }
}
