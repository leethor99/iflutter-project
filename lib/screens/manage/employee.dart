import 'package:flutter/material.dart';
import 'package:ibook/views/component.dart';

class ManageEmployee extends StatefulWidget {
  @override
  _ManageEmployeeState createState() => _ManageEmployeeState();
}

class _ManageEmployeeState extends State<ManageEmployee> {
  TextEditingController name, surname, address, tel, mail;
  String gender, position;
  String myGroupValue, myDropDownValue;
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
      appBar: MyStyle().iAppBar('ຈັດການຂໍ້ມູນພະນັກງານ'),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            MyText(
              title: 'ຊື່',
              controller: name,
              important: '*',
            ),
            SizedBox(height: 6),
            MyText(
              title: 'ນາມສະກຸນ',
              controller: surname,
              important: '*',
            ),
            SizedBox(height: 6),
            myRadoi(),
            SizedBox(height: 6),
            MyText(
              title: 'ທີ່ຢູ່',
              controller: address,
              important: '*',
            ),
            SizedBox(height: 6),
            MyText(
              title: 'ເບີໂທ',
              controller: tel,
              important: '*',
            ),
            SizedBox(height: 6),
            MyText(
              title: 'ອີເມລ',
              controller: mail,
              important: '',
            ),
            SizedBox(height: 12),
            myDropdownButton(),
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

  Column myRadoi() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'ເພດ',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 16,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(width: 2),
            Text(
              '*',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 16,
                color: Colors.red[600],
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width - 40,
          height: 52,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.white,
              border: Border.all(color: Colors.blue)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width - 90) / 2,
                child: Row(
                  children: [
                    Radio(
                      value: 'ຊາຍ',
                      groupValue: myGroupValue,
                      onChanged: (value) {
                        setState(() {
                          myGroupValue = value;
                        });
                      },
                    ),
                    Text(
                      'ຊາຍ',
                      style: TextStyle(fontFamily: 'NotoSans', fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 90) / 2,
                child: Row(
                  children: [
                    Radio(
                      value: 'ຍິງ',
                      groupValue: myGroupValue,
                      onChanged: (value) {
                        setState(() {
                          myGroupValue = value;
                        });
                      },
                    ),
                    Text(
                      'ຍິງ',
                      style: TextStyle(fontFamily: 'NotoSans', fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column myDropdownButton() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'ສິດທິຜູ້ໃຊ້',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 16,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(width: 2),
            Text(
              '*',
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 16,
                color: Colors.red[600],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
                border: Border.all(color: Colors.blue),
              ),
              child: DropdownButton<String>(
                value: myDropDownValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 48,
                iconEnabledColor: Colors.blue,
                dropdownColor: Colors.cyan[100],
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 16,
                  color: Colors.black,
                ),
                hint: Text('ເລືອກສິດທິຜູ້ໃຊ້'),
                onChanged: (String newValue) {
                  setState(() {
                    myDropDownValue = newValue;
                  });
                },
                items: <String>['ຜູ້ໃຫ້ບໍລິການ', 'ຜູ້ຈັດການ']
                    .map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            )
          ],
        )
      ],
    );
  }
}
