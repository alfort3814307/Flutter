import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/counter.dart';
import 'package:provider/provider.dart';

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Counter counter = context.watch<Counter>();

    return Scaffold(
      body: Center(
        child: Text(counter.count.toString()),
      ),
    );
  }
}
