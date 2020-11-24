import 'package:flutter/material.dart';
import 'package:ibook/views/component.dart';

class ManageUser extends StatefulWidget {
  @override
  _ManageUserState createState() => _ManageUserState();
}

class _ManageUserState extends State<ManageUser> {
  TextEditingController userName, oldPassword, newPassword, confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: MyStyle().iAppBar('ຈັດການຂໍ້ມູນຜູ້ໃຊ້'),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            ImageProfile(),
            MyText(
              title: 'ຊື່',
              controller: userName,
              important: '*',
            ),
            SizedBox(height: 6),
            MyText(
              title: 'ລະຫັດຜ່ານເກົ່າ',
              controller: oldPassword,
              important: '*',
            ),
            SizedBox(height: 6),
            MyText(
              title: 'ລະຫັດຜ່ານໃໝ່',
              controller: newPassword,
              important: '*',
            ),
            SizedBox(height: 6),
            MyText(
              title: 'ຢືນຢັນລະຫັດຜ່ານອີກຄັ້ງ',
              controller: confirmPassword,
              important: '*',
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyRaisedButton(
                  title: 'ລ້າງຂໍ້ມູນ',
                  color: Colors.cyan[600],
                  height: 55,
                  width: (MediaQuery.of(context).size.width - 50) / 2,
                  onPressed: () async {},
                ),
                MyRaisedButton(
                  title: 'ບັນທຶກ',
                  color: Colors.blue[700],
                  height: 55,
                  width: (MediaQuery.of(context).size.width - 50) / 2,
                  onPressed: () async {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
