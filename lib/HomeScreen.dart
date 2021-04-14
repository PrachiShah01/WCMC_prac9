import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String string = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2829A6),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            string,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      drawer: Container(
        color: Color(0xFF2829A6),
        width: 255.0,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                height: 165.0,
                width: 200,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey,
                        child: ClipOval(
                          child: SizedBox(
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              'Prachi',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Flexible(
                            child: Text(
                              'prachi@gmail.com',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1.0,
                color: Colors.grey,
                thickness: 1.0,
              ),
              SizedBox(height: 12.0),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page', style: TextStyle(fontSize: 15)),
                onTap: () {
                  setState(() {
                    string = "Home Page";
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Account', style: TextStyle(fontSize: 15)),
                onTap: () {
                  setState(() {
                    string = "My Account";
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('Wish List', style: TextStyle(fontSize: 15)),
                onTap: () {
                  setState(() {
                    string = "Wish List";
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings', style: TextStyle(fontSize: 15)),
                onTap: () {
                  setState(() {
                    string = "Settings";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
