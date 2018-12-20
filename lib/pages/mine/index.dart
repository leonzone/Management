import 'package:flutter/material.dart';
/// 我的页面
class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MineState();
}

class MineState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MINE'),
      ),
    );
  }
}
