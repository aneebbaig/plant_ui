import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_ui/screen/homepage.dart';
import 'package:plants_ui/screen/plant_details_screen.dart';
import 'package:plants_ui/screen/shop_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Plant UI',
        theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme().apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
            iconTheme: const IconThemeData(
              color: Colors.white,
            )),
        home: const HomePage(),
        routes: {
          Shop.routename: (context) => const Shop(),
          PlantDetailsScreen.routename: (context) => PlantDetailsScreen(),
        });
  }
}
