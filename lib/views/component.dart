// import 'dart:html';
// import 'dart:js';
import 'dart:ui';
import 'dart:io';
// import 'dart:ffi';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class MyStyle {
  Color textColor = Colors.white;

  Color buttonColor = Colors.blue;

  TextStyle textStyle = TextStyle(fontFamily: 'NotoSans', fontSize: 12);

  AppBar myAppBar(String appBarName) {
    return AppBar(
      title: Text(
        appBarName,
        style: TextStyle(fontFamily: 'NotoSans'),
      ),
      centerTitle: true,
    );
  }

  AppBar iAppBar(String appBarName) {
    return AppBar(
      title: Text(
        appBarName,
        style: TextStyle(fontFamily: 'NotoSans'),
      ),
      centerTitle: true,
      actions: [popupMenuButton()],
    );
  }

  Widget popupMenuButton() {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      onSelected: null,
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Row(
            children: [
              Icon(Icons.logout, color: Colors.blue[800]),
              SizedBox(width: 5),
              Text(
                'ອອກຈາກລະບົບ',
                style: TextStyle(fontFamily: 'NotoSans'),
              )
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            children: [
              Icon(Icons.settings, color: Colors.blue[800]),
              SizedBox(width: 5),
              Text(
                'ຕັ້ງຄ່າ',
                style: TextStyle(fontFamily: 'NotoSans'),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container myLogo(String imgUrl, double height) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
        ),
      ),
      height: height,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Image.asset(imgUrl),
      ),
    );
  }

  Widget memberId(TextEditingController userId) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        controller: userId,
        style: TextStyle(fontFamily: 'NotoSans'),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_open,
            color: Colors.blue,
          ),
          contentPadding: EdgeInsets.only(left: 3, right: 3),
          filled: true,
          fillColor: Colors.white,
          labelText: 'ລະຫັດສະມາຊິກ',
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.orange[600]),
          ),
        ),
      ),
    );
  }

  Widget userName(TextEditingController userName) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        controller: userName,
        style: TextStyle(fontFamily: 'NotoSans', fontSize: 18),
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.account_circle,
            color: Colors.blue,
          ),
          contentPadding: EdgeInsets.only(left: 3, right: 3),
          filled: true,
          fillColor: Colors.white,
          labelText: 'ຊື່ຜູ້ໃຊ້',
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.orange[600],
            ),
          ),
        ),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  ListCard({this.title, this.icon, this.iconColor, this.onTapped});
  final title, icon, iconColor;
  Function onTapped;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.cyan[300],
        onTap: onTapped,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 60,
              color: iconColor,
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(fontFamily: 'NotoSans', fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  MainCard({this.title, this.icon, this.iconColor, this.onTapped});
  final title, icon, iconColor;
  Function onTapped;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.cyan[300],
        onTap: onTapped,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 100,
              color: iconColor,
            ),
            SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(fontFamily: 'NotoSans', fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  MyText({this.title, this.controller, this.important});
  final title, controller, important;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 16,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(width: 2),
              Text(
                important,
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 16,
                  color: Colors.red[600],
                ),
              )
            ],
          ),
          TextField(
            controller: controller,
            style: TextStyle(
              fontFamily: 'NotoSans',
              fontSize: 16,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 3, right: 3),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(color: Colors.blue),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange[600]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyRaisedButton extends StatelessWidget {
  MyRaisedButton({
    this.title,
    this.color,
    this.height,
    this.width,
    this.onPressed,
  });
  final title, color;
  double height, width;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: RaisedButton(
        splashColor: Colors.cyan[300],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: color,
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class SearchData extends StatelessWidget {
  SearchData({this.controller, this.hinText});
  final controller, hinText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        fontFamily: 'NotoSans',
        fontSize: 16,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.only(left: 3, right: 3),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.blue),
        ),
        hintText: hinText,
        prefixIcon: Icon(Icons.search, color: Colors.blue[700], size: 35),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.orange[600]),
        ),
      ),
    );
  }
}

class PasswordForm extends StatefulWidget {
  PasswordForm({
    this.controller,
    this.labelText,
    this.obscureText,
    this.onChanged,
    this.onTapped,
  });
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final Function onChanged;
  final Function onTapped;
  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(fontFamily: 'NotoSans', fontSize: 18),
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 3, right: 3),
          prefixIcon: Icon(
            Icons.vpn_key_rounded,
            color: Colors.red,
          ),
          suffixIcon: GestureDetector(
            onTap: widget.onTapped,
            child: Icon(
              widget.obscureText ? Icons.visibility_off : Icons.visibility,
              color: widget.obscureText ? Colors.blue : Colors.red,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          labelText: widget.labelText,
          labelStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.blue,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.orange[600]),
          ),
        ),
      ),
    );
  }
}

class ImageProfile extends StatefulWidget {
  @override
  _ImageProfileState createState() => _ImageProfileState();
}

class _ImageProfileState extends State<ImageProfile> {
  File imageFile;

  openGallery(BuildContext context) async {
    final img = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = img;
    });
  }

  openCamera(BuildContext context) async {
    final img = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = img;
    });
  }

  Future<void> showChoiceDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Image From'),
          titlePadding: EdgeInsets.all(8),
          content: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  child: Row(
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 35,
                        color: Colors.orange[700],
                      ),
                      SizedBox(width: 3),
                      Text(
                        'ກ້ອງຖ່າຍຮູບ',
                        style: TextStyle(fontFamily: 'NotoSans', fontSize: 16),
                      ),
                    ],
                  ),
                  onTap: () async {
                    Navigator.of(context).pop();
                    openCamera(context);
                  },
                ),
                GestureDetector(
                  child: Row(
                    children: [
                      Icon(
                        Icons.image,
                        size: 35,
                        color: Colors.blue[700],
                      ),
                      SizedBox(width: 3),
                      Text(
                        'ຮູບພາບ',
                        style: TextStyle(fontFamily: 'NotoSans', fontSize: 16),
                      ),
                    ],
                  ),
                  onTap: () async {
                    Navigator.of(context).pop();
                    openGallery(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget imageView() {
    if (imageFile == null) {
      return CircleAvatar(
        radius: 60,
        child: Icon(
          Icons.person,
          size: 100,
        ),
      );
    } else {
      return CircleAvatar(
        radius: 60,
        backgroundImage: FileImage(imageFile),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageView(),
          RaisedButton(
            color: Colors.cyan[400],
            child: Text(
              'ເລືອກຮູບ',
              style: TextStyle(fontFamily: 'NotoSans', fontSize: 16),
            ),
            onPressed: () async {
              showChoiceDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

class MyDropdownButton extends StatefulWidget {
  MyDropdownButton({
    this.title,
    this.important,
    this.hint,
    this.items,
    this.value,
    this.onChanged,
  });
  final String title, important, hint, value;
  var items;
  Function onChanged;
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontFamily: 'NotoSans',
                fontSize: 16,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(width: 2),
            Text(
              widget.important,
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
                value: widget.value,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 48,
                iconEnabledColor: Colors.blue,
                dropdownColor: Colors.cyan[100],
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontSize: 16,
                  color: Colors.black,
                ),
                hint: Text(widget.hint),
                onChanged: widget.onChanged,
                items: widget.items.map<DropdownMenuItem<String>>(
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

class Book extends StatefulWidget {
  Book({this.title, this.value, this.size, this.onTapped, this.onChanged});
  final String title;
  final bool value;
  final double size;
  final Function onTapped, onChanged;
  static int booking_qty = 0;
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: (MediaQuery.of(context).size.width - 130) / 3,
            child: Card(
              color: Colors.cyan[300],
              child: InkWell(
                splashColor: Colors.orange,
                child: Center(
                  child: Icon(
                    Icons.menu_book_sharp,
                    size: widget.size,
                    color: Colors.pink,
                  ),
                ),
                onTap: () async {},
              ),
            ),
          ),
          Container(
            height: 22,
            padding: EdgeInsets.only(left: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 12),
                ),
                CircularCheckBox(
                  value: checkedValue,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (bool bl) async {
                    setState(() {
                      checkedValue = !checkedValue;
                      if (checkedValue == true) {
                        Book.booking_qty += 1;
                      } else {
                        if (Book.booking_qty < 0) {
                          Book.booking_qty = 0;
                        } else {
                          Book.booking_qty -= 1;
                        }
                      }
                    });
                  },
                  checkColor: Colors.white,
                  activeColor: Colors.blue,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyFloatingActionButton extends StatefulWidget {
  MyFloatingActionButton({this.title, this.onPressed});
  final String title;
  final Function onPressed;
  @override
  _MyFloatingActionButtonState createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Row(
        children: [
          Icon(
            Icons.add_alert,
            color: Colors.blue,
            size: 20,
          ),
          Text(
            widget.title,
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
      onPressed: widget.onPressed,
    );
  }
}
