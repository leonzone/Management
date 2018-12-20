import 'package:flutter/material.dart';
/// 销售动态
class TrendsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TrendsState();
}

class TrendsState extends State<TrendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trends'),
      ),
    );
  }
}
