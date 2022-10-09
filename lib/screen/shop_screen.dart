import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_ui/widgets/plant_card.dart';

import '../widgets/CategoryCard.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle_rounded,
              color: Colors.black,
              size: 35,
            ),
          ),
        ],
        title: Text(
          "Our Shop",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: const ShopBody(),
    );
  }
}

class ShopBody extends StatelessWidget {
  const ShopBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          TextField(
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 15,
              ),
            ),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
                size: 22,
              ),
              hintText: "Search...",
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const PlantCard(),
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Categories",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .apply(color: Colors.black),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: size.height * 0.3,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryCard(
                  "Decorative Plant",
                  "assets/images/plant3.png",
                ),
                SizedBox(
                  width: 5,
                ),
                CategoryCard(
                  "Artificial Plant",
                  "assets/images/plant4.png",
                ),
                SizedBox(
                  width: 5,
                ),
                CategoryCard(
                  "Fresh Plants",
                  "assets/images/plant5.png",
                ),
                SizedBox(
                  width: 5,
                ),
                CategoryCard(
                  "Aromatic Plants",
                  "assets/images/plant6.png",
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
