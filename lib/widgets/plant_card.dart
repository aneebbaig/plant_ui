import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 100,
            top: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF57855E),
          ),
          padding: const EdgeInsets.only(
            left: 100,
            top: 20,
            right: 5,
            bottom: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Artificial Aloe Vera Plant",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "\$ 100",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: List.generate(
                    5,
                    (index) => const Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellow,
                        )),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.add_to_photos,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          top: 20,
          left: 0,
          child: Image.asset(
            "assets/images/plant3.png",
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
