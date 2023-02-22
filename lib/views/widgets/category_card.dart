import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);
  final String networkURL = 'https://images.pexels.com/photos/5404026/pexels-photo-5404026.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width/2.35),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey,
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.multiply),
          image: NetworkImage(networkURL),
          fit: BoxFit.cover
        ),
      ),
      child: Center(
          child: Text(
              'Category 1',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
