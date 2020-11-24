import 'package:flutter/material.dart';

class MyDrawer {
  Drawer showDrawer() => Drawer(
        child: ListView(
          children: [
            drawerHeader(),
            signInMenu(),
            signUpMenu(),
          ],
        ),
      );

  ListTile signInMenu() {
    return ListTile(
      leading: Icon(Icons.login),
      title: Text('ເຂົ້າສູ່ລະບົບ', style: TextStyle(fontFamily: 'NotoSans')),
      onTap: () {
        // Navigator.pop(context);
        // MaterialPageRoute route = MaterialPageRoute(
        //   builder: (value) => SignIn(),
        // );
        // Navigator.push(context, route);
      },
    );
  }

  ListTile signUpMenu() {
    return ListTile(
      leading: Icon(Icons.exit_to_app),
      title: Text('ລົງຊື່ເຂົ້າໃຊ້', style: TextStyle(fontFamily: 'NotoSans')),
      onTap: () {
        // Navigator.pop(context);
        // MaterialPageRoute route = MaterialPageRoute(
        //   builder: (value) => SignUp(),
        // );
        // Navigator.push(context, route);
      },
    );
  }

  UserAccountsDrawerHeader drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: Image.asset('assets/images/new.png'),
      accountName: Text('Guest'),
      accountEmail: Text('Pleas Login'),
    );
  }
}
