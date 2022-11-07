import 'package:flutter/material.dart';
import 'package:plants_ui/model/plant_model.dart';

class PlantDetailsScreen extends StatelessWidget {
  static const routename = "/plantdetailsScreen";
  final Plant _plant = Plant(
      price: 100,
      title: "My Plant",
      description:
          "This is a great plant. I is a home plant and many people have it in their homes. They put it in their garden, on window panes and all the small places available in the house.",
      image: "assets/images/plant3.png");
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Color(0xFF57855E),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 22,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Text(
                        _plant.title,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Text(
                        _plant.description,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                "\$ ${_plant.price.toString()}",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFd8d354),
                              minimumSize: Size(size.width * 0.5, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Add to Cart",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: size.width * 0.1,
              right: size.width * 0.1,
              child: Image.asset(
                _plant.image,
                fit: BoxFit.contain,
                height: size.height * 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
