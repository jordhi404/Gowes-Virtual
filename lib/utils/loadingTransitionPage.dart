import 'package:flutter/material.dart';

class loadingTransitionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.black]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
                child: Image.asset("assets/LOGO GOWES VIRTUAL-01.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}