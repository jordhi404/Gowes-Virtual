import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/login_page.dart';
import 'package:virtual_cycling_app/pages/settingPage.dart';

class SignUp extends StatefulWidget{
  @override 
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUp>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override 
  Widget build(BuildContext context){
    final subtitle = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Text(
        'Sign up',
        style: TextStyle(
          fontSize: 20
        ),
      ),
    );
    final inputFullName = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Full Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))
        ),
      ),
    );
    final inputUsername = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'username',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))
        ),
      ),
    );
    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final confirmPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Confirm Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
          )
        ),
      ),
    );
    final buttonRegister = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0)
            ))
          ),
          child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 20)),
          onPressed: () {
            showDialog<String>(
              context: context, 
              builder: (BuildContext context) => AlertDialog(
                content: const Text('You are successfully registered!'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Login()))), 
                    child: const Text('Ok'),
                  ),
                ],
              ),
            ); 
          },
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
                colors: [Colors.black, Colors.white]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: Image.asset("assets/LOGO GOWES VIRTUAL-01.png", fit: BoxFit.contain)
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    children: <Widget>[
                      subtitle, inputFullName, inputUsername, inputPassword, confirmPassword, buttonRegister
                    ],
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
