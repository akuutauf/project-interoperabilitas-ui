import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_ui_interoperabilitas/screens/page_signup.dart';
import 'package:mobile_ui_interoperabilitas/screens/page_signin.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 54, 68, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
            child: Text(
              'Selamat datang di Aplikasi Manajemen data tugas.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 25),
            child: Image.asset(
              'assets/image/3d_man.png',
              scale: 13,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 30, 40, 40),
            child: Text(
              'Aplikasi ini memudahkan mahasiswa jurusan untuk mengelola tugas yang diampu oleh matakuliah.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  },
                  child: const Text(
                    'Daftar',
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
                    'Masuk',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 96, 95, 103),
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
