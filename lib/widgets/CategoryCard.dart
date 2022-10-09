import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  const CategoryCard(this.title, this.image);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.4,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 50,
              bottom: 10,
            ),
            margin: const EdgeInsets.only(
              top: 80,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade100,
            ),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.grey),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 110,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
