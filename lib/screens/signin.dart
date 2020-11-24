import 'package:flutter/material.dart';
import 'package:ibook/screens/mainaddmin.dart';
import 'package:ibook/screens/mainuser.dart';
import 'package:ibook/views/component.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final txtUserNmae = TextEditingController();
  final txtUserPassword = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: [
            MyStyle().myLogo(
              'assets/images/login1.png',
              MediaQuery.of(context).size.height / 3,
            ),
            SizedBox(height: 20),
            MyStyle().userName(txtUserNmae),
            SizedBox(height: 8),
            PasswordForm(
              controller: txtUserPassword,
              labelText: 'ລະຫັດຜ່ານ',
              obscureText: !obscurePassword,
              onChanged: () async {},
              onTapped: () async {
                setState(() {
                  obscurePassword = !obscurePassword;
                });
              },
            ),
            SizedBox(height: 30),
            signInButton(),
          ],
        ),
      ),
    );
  }

  Widget signInButton() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 300,
      height: 60,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.lightBlue,
        onPressed: () {
          if (txtUserNmae.text == 'add') {
            // Navigator.pop(context);
            MaterialPageRoute route = MaterialPageRoute(
              builder: (value) => AddminHome(),
            );
            Navigator.push(context, route);
          } else {
            // Navigator.pop(context);
            MaterialPageRoute route = MaterialPageRoute(
              builder: (value) => UserHome(),
            );
            Navigator.push(context, route);
          }
        },
        child: Text(
          'ເຂົ້າສູ່ລະບົບ',
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
