import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BerandaUser extends StatefulWidget {
  const BerandaUser({Key? key}) : super(key: key);

  @override
  State<BerandaUser> createState() => _BerandaUserState();
}

class _BerandaUserState extends State<BerandaUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        backgroundColor: Color.fromARGB(255, 41, 52, 98),
      ),
      backgroundColor: Color.fromRGBO(25, 23, 32, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(40, 30, 40, 0),
              child: Text(
                'Welcome back, you have been loged in.',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: Image.asset(
                  'assets/image/3d_woman.png',
                  scale: 13,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 20, 40, 30),
              child: Text(
                'Let\'s making a great code now with your team!',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 50,
              width: 150,
              margin: EdgeInsets.fromLTRB(0, 20, 5, 0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Documentation',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 69, 183, 184),
                    onPrimary: Colors.white,
                    fixedSize: const Size(300, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
