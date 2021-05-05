import 'package:flutter/material.dart';

class NetflixAppBar extends StatefulWidget implements PreferredSizeWidget{
  final bool istop;

  const NetflixAppBar({Key key, this.istop}) : super(key: key);
  @override
  _NetflixAppBarState createState() => _NetflixAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}

class _NetflixAppBarState extends State<NetflixAppBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: widget.istop ? Colors.transparent : Colors.black,
      child: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Text('NETFLIX',
              style: TextStyle(
                  color: Colors.red
              ),),
            SizedBox(
              width: 18.0,
            ),
            DropdownButton(items: [
              DropdownMenuItem(
                value: '메뉴',
                child: Text('메뉴',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ],
              value: '메뉴',)
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
    );
  }
}