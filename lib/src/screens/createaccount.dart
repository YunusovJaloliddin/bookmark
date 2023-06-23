import 'package:flutter/material.dart';
import 'package:textfield/src/screens/login.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Padding(
        padding: const EdgeInsets.only(top: 87),
        child: Text(
          "Create an account",
          style: TextStyle(
            fontFamily: "RealWay",
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          "Start your book journey with us.",
          style: TextStyle(
            fontFamily: "RealWay",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: FieldText("assets/Icon/icon holder.png", "Email full name",
            TextInputType.name,false),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: FieldText("assets/Icon/icon holder2.png",
            "Enter full email address", TextInputType.emailAddress,false),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: FieldText(
            "assets/Icon/icon holder3.png",
            "Enter password",
            TextInputType.visiblePassword,
            true,
            Image(
              image: AssetImage("assets/Icon/icon holder4.png"),
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: FieldText(
            "assets/Icon/icon holder3.png",
            "Re-enter password",
            TextInputType.visiblePassword,
            true,
            Image(
              image: AssetImage("assets/Icon/icon holder4.png"),
            )),
      ),
      Padding(
        padding: EdgeInsets.only(top: 50),
        child: ColoredBox(
          color: Color(0xFF3D4DEC),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 108, vertical: 20),
            child: Text(
              "Create an account",
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
      Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: RichText(
            text: TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                children: [
                TextSpan(text: "Already have an account? "),
            WidgetSpan(
              child: GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){return LogIn();})),
                child: Text("Log in", style: TextStyle(fontSize: 15,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.solid,),),
              ),
          ),
          ],
        ),
      ),
    ),
    ),
    ],
    ),
    ),
    );
  }
}

class FieldText extends StatefulWidget {
  FocusNode focusNode = FocusNode();
  String prefixicon;
  String text;
  Widget? suffixicon;
  TextInputType type;
  bool a;

  FieldText(this.prefixicon, this.text, this.type, this.a,[this.suffixicon]);

  @override
  State<FieldText> createState() => _FieldTextState();
}

class _FieldTextState extends State<FieldText> {
  late bool check;

  @override
  void initState() {
    super.initState();
    check = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      textAlign: TextAlign.left,
      showCursor: true,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(),
        prefixIcon: Image(
          image: AssetImage(widget.prefixicon),
        ),
        suffixIcon: widget.suffixicon != null
            ?IconButton(onPressed:(){ setState(() {check=!check;});}, icon: Icon(check?Icons.visibility:Icons.visibility_off),):null,
        hintText: widget.text,
        hintStyle: const TextStyle(
          fontFamily: "RealWay",
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
      textInputAction: TextInputAction.next,
      keyboardType: widget.type,
      onTapOutside: (event) {
        widget.focusNode.unfocus();
      },
      obscureText: widget.a && check,
      obscuringCharacter: ".",
    );
  }
}
