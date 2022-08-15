import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_ui_interoperabilitas/screens/page_home.dart';
// import 'page_signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // variables
  final _formKey = GlobalKey<FormState>();

  final white_color = Colors.white;
  final white_color_two = Color.fromARGB(190, 255, 255, 255);
  final black_color = Color.fromARGB(255, 34, 40, 49);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 23, 32, 1),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  },
                  child: FaIcon(
                    FontAwesomeIcons.angleLeft,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
                child: Text(
                  'Let sign you in.',
                  style: GoogleFonts.poppins(
                      color: white_color,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
                child: Text(
                  'Welcome back.',
                  style: GoogleFonts.poppins(
                      color: white_color,
                      fontSize: 24,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Text(
                  'You\'ve been missed!',
                  style: GoogleFonts.poppins(
                      color: white_color,
                      fontSize: 24,
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 70, 30, 0),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 20),
                    hintText: 'Phone, email or username',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.white70, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.white70, width: 1.0),
                    ),
                    filled: false,
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w100,
                      color: Colors.white70,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Field is Empty";
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                        .hasMatch(value)) {
                      return "Invalid Email";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 20),
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.white70, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.white70, width: 1.0),
                    ),
                    filled: false,
                    prefixIconColor: Colors.white,
                    suffixIcon: Container(
                      padding: EdgeInsets.only(right: 22, top: 8),
                      child: Container(
                          child: FaIcon(
                        FontAwesomeIcons.fingerprint,
                        color: Colors.white70,
                        size: 24,
                      )),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w100,
                      color: Colors.white70,
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Field is Empty";
                    } else if (value.length < 8) {
                      return "Password less than 8 Characters";
                    }
                    return null;
                  },
                  obscureText: true,
                  onChanged: (data) {
                    setState(() {});
                  },
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 140, 30, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: GoogleFonts.poppins(
                            color: white_color_two,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Register',
                        style: GoogleFonts.poppins(
                            color: white_color,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
              Container(
                height: 55,
                margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: white_color,
                      onPrimary: black_color,
                      fixedSize: const Size(300, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ]),
      ),
    );
  }
}
