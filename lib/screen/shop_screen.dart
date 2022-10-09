import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Icon(Icons.verified_user_outlined),
        ],
        title: Text(
          "Our Shop",
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(),
    );
  }
}
