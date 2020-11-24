import 'package:flutter/material.dart';
import 'package:ibook/screens/booking/booking.dart';
import 'package:ibook/views/component.dart';
import 'package:ibook/views/drawers.dart';
import 'package:ibook/screens/manage.dart';

class AddminHome extends StatefulWidget {
  @override
  _AddminHomeState createState() => _AddminHomeState();
}

class _AddminHomeState extends State<AddminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      appBar: MyStyle().iAppBar('ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ iBooK'),
      drawer: MyDrawer().showDrawer(),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            MainCard(
              title: 'ຈັດການຂໍ້ມູນ',
              icon: Icons.construction_rounded,
              iconColor: Colors.orange[600],
              onTapped: () async {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (value) => ManageData(),
                );
                Navigator.push(context, route);
              },
            ),
            MainCard(
              title: 'ສົ່ງປື້ມ',
              icon: Icons.upload_file,
              iconColor: Colors.blue[600],
              onTapped: () async {},
            ),
            MainCard(
              title: 'ຈອງປື້ມ',
              icon: Icons.add_to_photos_rounded,
              iconColor: Colors.orange[600],
              onTapped: () async {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (value) => Booking(),
                );
                Navigator.push(context, route);
              },
            ),
            MainCard(
              title: 'ຢືມປື້ມ',
              icon: Icons.add_shopping_cart_sharp,
              iconColor: Colors.blue[600],
              onTapped: () async {},
            ),
            MainCard(
              title: 'ຄົ້ນຫາຂໍ້ມູນ',
              icon: Icons.search,
              iconColor: Colors.green[600],
              onTapped: () async {},
            ),
            MainCard(
              title: 'ລາຍງານ',
              icon: Icons.insert_chart_outlined_rounded,
              iconColor: Colors.green[600],
              onTapped: () async {},
            ),
          ],
        ),
      ),
    );
  }
}
