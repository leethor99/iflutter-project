import 'package:flutter/material.dart';
import 'package:ibook/screens/manage/member.dart';
import 'package:ibook/screens/manage/user.dart';
import 'package:ibook/views/component.dart';
import 'package:ibook/screens/manage/employee.dart';
import 'package:ibook/screens/manage/book.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  var books = [
    'book1',
    'book2',
    'book3',
    'book4',
    'book5',
    'book6',
    'book7',
    'book8',
    'book9',
    'book10',
    'book11',
    'book12',
    'book13',
    'book14',
    'book15',
    'book16',
    'book17',
    'book18',
    'book19',
    'book20',
  ];
  final chidren = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      appBar: MyStyle().iAppBar('ຈອງປື້ມ'),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            for (var i = 0; i < books.length; i++)
              Book(
                title: books[i],
                size: (MediaQuery.of(context).size.width - 160) / 3,
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_shopping_cart_sharp,
              color: Colors.blue[700],
              size: 30,
            ),
            Text(
              Book.booking_qty.toString(),
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
        onPressed: () async {},
      ),
    );
  }
}
