import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Profil'),
          centerTitle: true,
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Picture(),
              Nama(),
              NIM(),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.blue;
                        return Colors.blue; // Use the component's default.
                      },
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/FirstPage');
                  },
                  child: Text(
                    'BACK',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.100),
        image: DecorationImage(
          image: AssetImage('images/Sastra.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Nama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Putu Sastra Krisna Yana",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class NIM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "1915051084",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      margin: const EdgeInsets.only(top: 10.0),
    );
  }
}
