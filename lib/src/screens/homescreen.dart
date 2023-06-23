import 'package:flutter/material.dart';
import 'package:textfield/src/screens/createaccount.dart';
import 'package:textfield/src/screens/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image(
              image: AssetImage("assets/Page/Screenshot_20230622-193633-1.jpg"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 124, left: 93),
            child: Image(
              image: AssetImage(
                "assets/Icon/logo.png",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 511, left: 25),
            child: ColoredBox(
              color: Color(0xFF3D4DEC),
              child: GestureDetector(
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context){return LogIn();})),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 115,vertical: 20),
                  child: Text(
                    "Log into account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "RealWay",
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 587, left: 25),
            child: ColoredBox(
              color: Color(0xFFFFFFFF),
              child: GestureDetector(
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context){return CreateAccount();})),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 108,vertical: 20),
                  child: Text(
                    "Create an account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "RealWay",
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
