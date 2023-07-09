
import 'package:flutter/material.dart';
import 'package:my_first_app/utilities/colors.dart';

class CategoryCard extends StatelessWidget {
  final String title, image;
  final VoidCallback presss;
  const CategoryCard({
    Key? key,
    required this.title,
    required this.image,
    required this.presss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: presss,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(100),
          child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: kWhiteClr,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(image),
                    ),
                 const   SizedBox(
                      width: 5,
                    ),
                    Text(
                      title,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
