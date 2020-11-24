import 'package:flutter/material.dart';
import 'package:ibook/views/component.dart';

class UserHome extends StatefulWidget {
  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: MyStyle().iAppBar('ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ iBooK'),
      body: Padding(
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
