import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/counter.dart';
import 'package:flutter_application_1/ui/page_b.dart';
import 'package:provider/provider.dart';

//class HomePage extends StatefulWidget {
class HomePage extends StatelessWidget {
  @override
  // _HomePageState createState() => _HomePageState();
  Widget build(BuildContext context) {
    final Counter counter = context.watch<Counter>();

    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        height: 400.0,
        width: 400.0,
        color: Colors.yellow,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  counter.count++;
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => PageB()),
          );
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
