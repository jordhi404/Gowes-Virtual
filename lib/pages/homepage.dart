import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/bike_custom.dart';
import 'package:virtual_cycling_app/pages/connections.dart';
import 'package:virtual_cycling_app/pages/settingPage.dart';
import 'package:virtual_cycling_app/utils/loading.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('VIRTUAL CYCLING'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => settings()));
              }, 
              icon: Icon(Icons.settings)
            );
          },
        ),
      ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 120.0,
                child: Image.asset("assets/LOGO GOWES VIRTUAL-01.png", fit: BoxFit.contain),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Connections()));
                    },
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(24.0),
                        width: 150,
                        height: 200,
                        color: Colors.blueGrey,
                        child: Center(
                          child: Text('Bluetooth'),
                        ),
                      ),
                    )
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bikeCustom()));
                    },
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(24.0),
                        width: 150,
                        height: 200,
                        color: Colors.blueGrey,
                        child: Center(
                          child: Text('Bike'),
                        ),
                      ),
                    )
                  ),
                ],
              ),
              SizedBox(height: 16.0, width: 20.0,),
              ElevatedButton(
                onPressed: () => fetchData(context), 
                child: Text('Start')
              )
            ],
          ),
        )
      ),
    );
  }
}