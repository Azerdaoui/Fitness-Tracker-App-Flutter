import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: homeAppBar(context)
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 10, top: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Check out your progress', style: TextStyle(color: Theme.of(context).highlightColor, fontSize: 17, fontWeight: FontWeight.w600)),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Wrap(
                spacing: 30,
                children: <Widget>[
                    Icon(Icons.arrow_left, size: 30),
                    Text('July 2019', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 27, fontWeight: FontWeight.w600)),
                    Icon(Icons.arrow_right, size: 30)
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  bar(Theme.of(context).primaryColor, 'Monday', 15),
                  bar(Theme.of(context).primaryColor, 'Tuesday', 16),
                  bar(Theme.of(context).primaryColor, 'Wednesday', 17),
                  bar(Theme.of(context).primaryColor, 'Thursday', 18),
                  bar(Theme.of(context).primaryColor, 'Friday', 19),
                  bar(Theme.of(context).primaryColor, 'Friday', 20),
                  bar(Theme.of(context).primaryColor, 'Saturday', 21),
                  bar(Theme.of(context).primaryColor, 'Sanday', 22),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

AppBar homeAppBar(BuildContext context){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: false,
    title: Padding(
      padding: EdgeInsets.only(top: 17),
      child: Column(
        children: <Widget>[
          Text('Hi Othman', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 28, fontWeight: FontWeight.w600)),
        ],
      ),
    ),
    actions: <Widget>[
      InkWell(
        child: Container(
          padding: EdgeInsets.only(right: 0),
          child: Image.asset('assets/images/avatar.png', width: 90)
        ),
      )
    ],
  );
}

Widget bar(Color color, String day, int number) {
  return Container(
    child: Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 2.0,
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[Text('$day', style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w300))]),
            Divider(color: Colors.redAccent, height: 1),
            Row(children: <Widget>[Text('$number', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600))]),
          ],
        ),        
      ),
    ),
  );
}