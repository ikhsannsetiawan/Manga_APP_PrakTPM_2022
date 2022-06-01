import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          color: Colors.grey[200],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                  )
                ),
                SizedBox(height: 8,),
                Container(
                  child: Text(
                    'MANGAGAN',
                    style: GoogleFonts.openSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 10,
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  child: Text(
                    'MANGAGAN adalah aplikasi pencarian manga',
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 32,),
                Container(
                  child: Text(
                    'ANGGOTA KELOMPOK :',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '123190111 - IKHSAN SETIAWAN',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '123190121 - M. PATTY AMAL MADANI',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
