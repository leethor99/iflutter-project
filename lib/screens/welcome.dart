import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibook/screens/signup.dart';
import 'package:ibook/screens/signin.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  // Future<Null> signOut() async {
  //   // SharedPreferences preferences = await SharedPreferences.getInstance();
  //   // preferences.clear();
  //   exit(0);
  // }
  bool isSearch = true;
  final txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: isSearch
            ? Text(
                'ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ iBooK',
                style: TextStyle(fontFamily: 'NotoSans'),
              )
            : TextField(
                controller: txtSearch,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'NotoSans',
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'ຄົ້ນຫາຂໍ້ມູນທີ່ນີ້...',
                  border: InputBorder.none,
                ),
              ),
        centerTitle: true,
        actions: [
          isSearch
              ? IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => {
                    setState(() {
                      isSearch = false;
                    }),
                  },
                )
              : IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () => {
                    setState(() {
                      txtSearch.clear();
                    }),
                  },
                ),
        ],
        leading: isSearch
            ? null
            : IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => {
                  setState(
                    () {
                      txtSearch.clear();
                      isSearch = true;
                    },
                  ),
                },
              ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
      ),
    );
  }

  Widget txetSearch() => TextField(
        autofocus: true,
        style: TextStyle(fontFamily: 'NotoSans'),
        decoration: InputDecoration(
          hintText: 'ຄົ້ນຫາຂໍ້ມູນ...',
          hintStyle: TextStyle(
            color: Colors.blueGrey[300],
          ),
          border: InputBorder.none,
        ),
      );

  // UserAccountsDrawerHeader drawerHeader() => UserAccountsDrawerHeader(
  //     accountName: Text('Guest'), accountEmail: Text('Please Login'));
}
