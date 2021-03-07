import 'package:flutter/material.dart';

class ListviewScreen extends StatefulWidget {
  ListviewScreen({Key key}) : super(key: key);

  @override
  _ListviewScreenState createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text(
            "ListViewScreen",
          ),
        ),
        body: ListView(
          children: [
            ListTile(title: Text("หัวข้อ 1"),
            ),
            ListTile(title: Text("หัวข้อ 2"),
            ),
            ListTile(title: Text("หัวข้อ 3"),
            ),
            ListTile(title: Text("หัวข้อ 4"),
            ),
            ListTile(title: Text("หัวข้อ 5"),
            ),
            ListTile(title: Text("หัวข้อ 6"),
            ),
            ListTile(title: Text("หัวข้อ 7"),
            ),
            ListTile(title: Text("หัวข้อ 8"),
            ),
            ListTile(title: Text("หัวข้อ 9"),
            ),
            ListTile(title: Text("หัวข้อ 10"),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: "phone"),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: "dashboard"),
          ],
        ),
      ),
    );
  }
}