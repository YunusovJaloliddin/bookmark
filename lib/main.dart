import 'package:flutter/material.dart';
import 'src/screens/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Logo(),
    );
  }
}


class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  void initState() {
    super.initState();
    startPage();
  }
  void startPage() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ColoredBox(
          color: Color(0xFF3D4DEC),
          child: Center(
            child: Image(
              color: Colors.white,
              height: 40,
              width: 182,
              image: AssetImage("assets/Icon/logo.png"),),
          ),
        ),
      ),
    );
  }
}
