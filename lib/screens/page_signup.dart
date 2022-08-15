import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_ui_interoperabilitas/screens/page_beranda.dart';
import 'package:mobile_ui_interoperabilitas/screens/page_signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  Navigator.pop(context);
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
                'Create new account.',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: Text(
                'Please fill your identity on our form bellow.',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 40, 30, 0),
              child: TextFormField(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 20),
                  hintText: 'Username',
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
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: TextFormField(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 20),
                  hintText: 'Email',
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
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return "Invalid Email";
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: TextFormField(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
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
                    padding: EdgeInsets.only(right: 22, top: 8.5),
                    child: Container(
                        child: FaIcon(
                      FontAwesomeIcons.fingerprint,
                      color: Colors.white70,
                      size: 22,
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
              margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: TextFormField(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 20),
                  hintText: 'Confirm Password',
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
                    padding: EdgeInsets.only(right: 22, top: 8.5),
                    child: Container(
                        child: FaIcon(
                      FontAwesomeIcons.fingerprint,
                      color: Colors.white70,
                      size: 22,
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
                margin: EdgeInsets.fromLTRB(0, 40, 30, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignIn();
                        }));
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )),
            Container(
              height: 55,
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BerandaUser();
                  }));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    fixedSize: const Size(300, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
