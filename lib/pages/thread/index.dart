import 'package:flutter/material.dart';
/// 销售线索
class ThreadPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ThreadState();
}

class ThreadState extends State<ThreadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thread'),
      ),
    );
  }
}
