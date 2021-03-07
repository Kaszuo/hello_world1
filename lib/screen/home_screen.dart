import 'package:flutter/material.dart';
import 'package:hello_world/screen/example.dart';
import 'package:hello_world/screen/from_screen.dart';
import 'package:hello_world/screen/list_view_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Text("Hello Drawer"),
        ),
        appBar: AppBar(
          title: Text("My First Project"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(color: Colors.red[50], child: Text("Flutter v.1")),
              Text("Welcome"),
              Container(
                width: 150,
                height: 150,
                color: Colors.green[100],
                child: Image.asset('assets/images/cat1.jpg'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListviewScreen(),
                    ),
                  );
                },
                child: Text("List View"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FromScreen(),
                    ),
                  );
                },
                child: Text("From Screen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Example(),
                    ),
                  );
                },
                child: Text("Example"),
              ),
            ],
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
