import 'dart:io';

import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/homepage.dart';

List<String> friendList = ['Armin', 'Bernad', 'Juan', 'Beatrix', 'Moana'];

class friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'friend list',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Friends'),
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
            },),  
        ),
        body: ListTile(
          leading: CircleAvatar(),
        ),
      ),
    );
  }
}
