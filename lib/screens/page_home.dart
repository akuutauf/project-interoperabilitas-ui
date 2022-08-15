import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_ui_interoperabilitas/screens/page_signin.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 23, 32, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
            child: Text(
              'Enterprise team collaboration.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Image.asset(
              'assets/image/3d_man.png',
              scale: 13,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 30, 40, 40),
            child: Text(
              'Bring together your files, your tools, projects and people. Including a new mobile and desktop application.',
              style: GoogleFonts.poppins(
                color: Color.fromARGB(190, 255, 255, 255),
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 120,
                margin: EdgeInsets.fromLTRB(0, 30, 5, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      fixedSize: const Size(300, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              Container(
                height: 50,
                width: 120,
                margin: EdgeInsets.fromLTRB(5, 30, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignIn();
                    }));
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 59, 58, 66),
                      onPrimary: Colors.white,
                      fixedSize: const Size(300, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
