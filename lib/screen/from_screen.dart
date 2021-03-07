import 'package:flutter/material.dart';

class FromScreen extends StatefulWidget {
  FromScreen({Key key}) : super(key: key);

  @override
  _FromScreenState createState() => _FromScreenState();
}

class _FromScreenState extends State<FromScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        appBar: AppBar(
          title: Text(
            "FromScreen",
          ),
        ),
        body: Center(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "ชื่อ - สกุล",
                  ),
                ),
                  TextFormField(
                  decoration: InputDecoration(
                    labelText: "อีเมล",
                  ),
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("บันทึก",
                ),
                ),
          ],
          ),
        ),
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