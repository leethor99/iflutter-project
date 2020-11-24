import 'package:flutter/material.dart';
import 'package:ibook/views/component.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final txtUserId = TextEditingController();
  final txtUserName = TextEditingController();
  final txtUserPassword = TextEditingController();
  final txtConfirmPassword = TextEditingController();
  String userType;
  final fieldKey = Key;
  final controller = TextEditingController();
  final hintText = String;
  final onChanged = Function;
  bool obscurePassword = true;
  bool obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: [
            MyStyle().myLogo(
              'assets/images/signup.gif',
              MediaQuery.of(context).size.height / 3,
            ),
            SizedBox(height: 20),
            MyStyle().memberId(txtUserId),
            SizedBox(height: 8),
            MyStyle().userName(txtUserName),
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
            SizedBox(height: 8),
            PasswordForm(
              controller: txtConfirmPassword,
              labelText: 'ຢືນຢັນລະຫັດຜ່ານອີກຄັ້ງ',
              obscureText: !obscureConfirm,
              onChanged: () async {},
              onTapped: () async {
                setState(() {
                  obscureConfirm = !obscureConfirm;
                });
              },
            ),
            SizedBox(height: 30),
            signUpButton(),
          ],
        ),
      ),
    );
  }

  Widget signUpButton() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 100,
      height: 60,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.lightBlue,
        onPressed: () {},
        child: Text(
          'ຢຶນຢັນ',
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

  // Widget passwordForm(TextEditingController passwordController,
  //     String labelText, Function onTapped, bool obscureText) {
  //   return Container(
  //     margin: EdgeInsets.only(left: 10, right: 10),
  //     height: 60,
  //     width: 300,
  //     child: TextFormField(
  //       controller: passwordController,
  //       style: TextStyle(fontFamily: 'NotoSans', fontSize: 18),
  //       obscureText: obscureText,
  //       decoration: InputDecoration(
  //         prefixIcon: Icon(
  //           Icons.vpn_key_rounded,
  //           color: Colors.red,
  //         ),
  //         suffixIcon: GestureDetector(
  //           onTap: onTapped,
  //           child: Icon(
  //             obscureText ? Icons.visibility_off : Icons.visibility,
  //             color: obscureText ? Colors.blue : Colors.red,
  //           ),
  //         ),
  //         filled: true,
  //         fillColor: Colors.white,
  //         labelText: labelText,
  //         labelStyle: TextStyle(color: Colors.grey),
  //         enabledBorder: OutlineInputBorder(
  //             borderRadius: BorderRadius.circular(30),
  //             borderSide: BorderSide(
  //               color: Colors.blue,
  //             )),
  //         focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(30),
  //           borderSide: BorderSide(color: Colors.orange[600]),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
