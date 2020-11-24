import 'package:flutter/material.dart';
import 'package:ibook/views/component.dart';

class ManageBook extends StatefulWidget {
  @override
  _ManageBookState createState() => _ManageBookState();
}

class _ManageBookState extends State<ManageBook> {
  TextEditingController name, surname, address, tel, mail;
  String gender, position;
  String groupValue, statusValue;
  Color color = Colors.blue;
  @override
  void initState() {
    setState(() {
      // myGroupValue = 'ຊາຍ';
      // color = Colors.blue;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: MyStyle().iAppBar('ຈັດການຂໍ້ມູນປື້ມ'),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            MyText(
              title: 'ຊື່ປື້ມ',
              controller: name,
              important: '*',
            ),
            SizedBox(height: 6),
            MyDropdownButton(
              title: 'ໝວດໝູ່',
              important: '*',
              hint: 'ເລືອກໜວດໝູ່ປື້ມ',
              items: <String>['ກະຕຸນ', 'ທຸລະກິດ', 'ການເມືອງ'],
              value: groupValue,
              onChanged: (String newValue) async {
                setState(() {
                  groupValue = newValue;
                });
              },
            ),
            SizedBox(height: 6),
            MyText(
              title: 'ລາຍລະອຽດ',
              controller: surname,
              important: '*',
            ),
            SizedBox(height: 6),
            MyText(
              title: 'ຈຳນວນ',
              controller: address,
              important: '*',
            ),
            SizedBox(height: 6),
            MyDropdownButton(
              title: 'ສະຖານະ',
              important: '*',
              hint: 'ເລືອກສະຖານະປື້ມ',
              items: <String>['ຢືມໄດ້', 'ຢືມບໍ່ໄດ້'],
              value: statusValue,
              onChanged: (String newValue) async {
                setState(() {
                  statusValue = newValue;
                });
              },
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyRaisedButton(
                  title: 'ລຶບຂໍ້ມູນ',
                  color: Colors.orange[700],
                  height: 55,
                  width: (MediaQuery.of(context).size.width - 60) / 3,
                  onPressed: () async {},
                ),
                MyRaisedButton(
                  title: 'ລ້າງຂໍ້ມູນ',
                  color: Colors.cyan[600],
                  height: 55,
                  width: (MediaQuery.of(context).size.width - 60) / 3,
                  onPressed: () async {},
                ),
                MyRaisedButton(
                  title: 'ບັນທຶກ',
                  color: Colors.blue[700],
                  height: 55,
                  width: (MediaQuery.of(context).size.width - 60) / 3,
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
