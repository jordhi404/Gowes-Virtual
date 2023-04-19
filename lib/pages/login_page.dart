import 'package:flutter/material.dart';
import 'package:virtual_cycling_app/pages/homepage.dart';
import 'package:virtual_cycling_app/pages/settingPage.dart';
import 'package:virtual_cycling_app/pages/sign_up_page.dart';

class Login extends StatefulWidget{
  @override 
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override 
  Widget build(BuildContext context){
    final subtitle = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Text(
        'Sign in',
        style: TextStyle(
          fontSize: 20
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
    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0)
            ))
          ),
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Homepage())))
          },
        ),
      ),
    );
    final buttonSignUp = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Does not have account?'),
        TextButton(
          child: Text('Sign up', style: TextStyle(color: Colors.black, fontSize: 16),),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => SignUp())));
          },
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => settings()));
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
                      subtitle, inputUsername, inputPassword, buttonLogin, buttonSignUp
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