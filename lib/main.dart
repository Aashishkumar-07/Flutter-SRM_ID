import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text("SRM ID"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
          backgroundColor: Colors.grey[800],
          child: Icon(Icons.add)),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1O2A0GAvuzCV60uMUnXfMij8MKpX8wXo9A&usqp=CAU"),
                ),
              ),
              Divider(
                color: Colors.grey[800],
                height: 60.0,
              ),
              Text(
                "NAME",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text("Luigi",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[200],
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 40.0),
              Text(
                "POINT",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text('$count',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[200],
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 30.0),
              Row(children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 4,
                ),
                Text('Luigi@srmist.edu.in',
                    style: TextStyle(color: Colors.blue)),
              ])
            ]),
      ),
    );
  }
}
