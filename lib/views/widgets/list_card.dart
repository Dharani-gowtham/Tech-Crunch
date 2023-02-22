import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  final String networkUrl = 'https://images.pexels.com/photos/15552240/pexels-photo-15552240.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
  final String newsDate = '22 Feb 2023';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      // color: Colors.green,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.yellow,
              image: DecorationImage(
                image: NetworkImage(networkUrl),
                fit: BoxFit.cover,
                
              )
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                        'UPI goes global: India, Singapore start instant fund transfer; PM Modi hails new era in jsdn filhjbijbsd',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text('Date: $newsDate', style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),)
                ],
              )
          ),
        ],
      ),
    );
  }
}
