import 'package:flutter/material.dart';
import 'package:my_first_app/model/place_model.dart';
import 'package:my_first_app/screens/Home/widgets/recommended_card.dart';
import 'package:my_first_app/screens/detailscreen/detail_screen.dart';
import 'package:my_first_app/utilities/colors.dart';

import 'widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteClr,
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/icon/home1.png",
                  height: 30,
                  width: 30,
                ),
                Image.asset(
                  "assets/icon/bookmark1.png",
                  height: 30,
                  width: 30,
                  // color: Colors.grey,
                ),
                Image.asset(
                  "assets/icon/calender1.png",
                  height: 30,
                  width: 30,
                  //   color: Colors.grey,
                ),
                Image.asset(
                  "assets/icon/bubble.png",
                  height: 30,
                  width: 30,
                  //  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: SingleChildScrollView(
                child: Column(children: [
                  //app bar
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/image/samuel.jpeg"),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: "Hello",
                              style: TextStyle(color: kBlackClr, fontSize: 18),
                              children: [
                            TextSpan(
                                text: ",Samuel",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ))
                          ]))
                    ],
                  ),

                  //search Section
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Explore the new destination",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(100),
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: kWhiteClr,
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Search your destination",
                                    prefixIcon: Icon(Icons.search),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none),
                              ),
                            ),
                            const CircleAvatar(
                              radius: 22,
                              backgroundColor: kPrimaryClr,
                              child: Icon(
                                Icons.sort_by_alpha_sharp,
                                color: kWhiteClr,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //category
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            CategoryCard(
                              presss: () {},
                              image: "assets/image/mountains.jpeg",
                              title: "Mountains",
                            ),
                            CategoryCard(
                              presss: () {},
                              image: "assets/image/forests.jpeg",
                              title: "Forests",
                            ),
                            CategoryCard(
                              presss: () {},
                              image: "assets/image/sea.webp",
                              title: "Sea",
                            ),
                            CategoryCard(
                              presss: () {},
                              image: "assets/image/deserts.jpeg",
                              title: "Deserts",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //Recommended
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Recommended",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                      height: 350,
                      child: ListView.builder(
                          itemCount: places.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, right: 15),
                              child: Row(
                                children: [
                                  RecommendedCard(
                                    placeInfo: places[index],
                                    press: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen(
                                                    placeInfo: places[index],
                                                  )));
                                    },
                                  )
                                ],
                              ),
                            );
                          })),
                ]),
              )),
        ));
  }
}
