import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 360,
              color: Colors.red,
            child: Text('1')),
            Container(
              width: 360,
              color: Colors.amber,
            child: Text('2')),
          ],
        ),
      );
}
}