import 'package:flutter/material.dart';
import 'package:ibook/screens/manage/member.dart';
import 'package:ibook/screens/manage/user.dart';
import 'package:ibook/views/component.dart';
import 'package:ibook/screens/manage/employee.dart';
import 'package:ibook/screens/manage/book.dart';

class ManageData extends StatefulWidget {
  @override
  _ManageDataState createState() => _ManageDataState();
}

class _ManageDataState extends State<ManageData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      appBar: MyStyle().iAppBar('ຈັດການຂໍ້ມູນ'),
      body: Padding(
        padding: EdgeInsets.only(top: 4),
        child: ListView(
          children: [
            ListCard(
              title: 'ຈັດການຂໍ້ມູນພະນັກງານ',
              icon: Icons.switch_account,
              iconColor: Colors.orange[700],
              onTapped: () async {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (value) => ManageEmployee(),
                );
                Navigator.push(context, route);
              },
            ),
            ListCard(
              title: 'ຈັດການຂໍ້ມູນສະມາຊິກ',
              icon: Icons.group_sharp,
              iconColor: Colors.orange[700],
              onTapped: () async {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (value) => ManageMember(),
                );
                Navigator.push(context, route);
              },
            ),
            ListCard(
              title: 'ຈັດການຂໍ້ມູນຜູ້ໃຊ້',
              icon: Icons.account_circle,
              iconColor: Colors.orange[700],
              onTapped: () async {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (value) => ManageUser(),
                );
                Navigator.push(context, route);
              },
            ),
            ListCard(
              title: 'ຈັດການຂໍ້ມູນປື້ມ',
              icon: Icons.library_books,
              iconColor: Colors.orange[700],
              onTapped: () async {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (value) => ManageBook(),
                );
                Navigator.push(context, route);
              },
            ),
            ListCard(
              title: 'ຈັດການຂໍ້ມູນປະເພດປື້ມ',
              icon: Icons.category_rounded,
              iconColor: Colors.orange[700],
              onTapped: () async {},
            ),
            ListCard(
              title: 'ຈັດການຂໍ້ມູນຜູ້ແຕ່ງ',
              icon: Icons.perm_contact_cal,
              iconColor: Colors.orange[700],
              onTapped: () async {},
            ),
          ],
        ),
      ),
    );
  }
}
