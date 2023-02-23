import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class CategoryCard extends StatelessWidget {
  final String title;
  final String thumbnailUrl;
  final String content;
  const CategoryCard({Key? key, required this.title, required this.thumbnailUrl, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        Future<void> fetchData() async {
          var url = Uri.parse('https://app.dharaniandteam.com/getalldatas.php');
          var response = await http.get(url);

          if (response.statusCode == 200) {
            // You can handle the response data here
            print(response.body);
          } else {
            // Handle the error condition
            print('Request failed with status: ${response.statusCode}.');
          }
        }


        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('You Pressed a Category',textAlign: TextAlign.center,),
            duration: Duration(seconds: 2),
          ),
        );

      },
      child: Container(
        width: (MediaQuery.of(context).size.width/2.35),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.multiply),
            image: NetworkImage(thumbnailUrl),
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
      ),
    );
  }
}
