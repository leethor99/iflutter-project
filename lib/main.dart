import 'package:flutter/material.dart';
import 'package:ibook/screens/welcome.dart';
import 'package:ibook/screens/signup.dart';
import 'package:ibook/screens/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  final List<Widget> widgetPage = [
    Welcome(),
    SignIn(),
    SignUp(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iBooK',
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8),
          child: widgetPage.elementAt(_index),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange[900],
          unselectedItemColor: Colors.blue,
          selectedFontSize: 16,
          unselectedFontSize: 12,
          onTap: onTapped,
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.import_contacts_sharp,
              ),
              label: 'ປື້ມທັງໝົດ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.exit_to_app_rounded,
              ),
              label: 'ເຂົ້າສູ່ລະບົບ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_add,
              ),
              label: 'ລົງທະບຽນ',
            ),
          ],
        ),
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}
