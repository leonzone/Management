import 'package:flutter/material.dart';
/// 客户管理
class CustomerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomerState();
}

class CustomerState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer'),
      ),
    );
  }
}
