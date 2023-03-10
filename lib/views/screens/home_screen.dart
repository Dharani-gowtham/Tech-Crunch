import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_dart/views/widgets/category_card.dart';
import 'package:test_dart/views/widgets/list_card.dart';
import 'package:test_dart/views/widgets/thumb_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String appTitle = 'Tech Crunch';

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Hottest News',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  'See more',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 14),
                    color: Colors.grey,
                  ),)
              ],
            ),
          ), // Title
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 15),
                ThumbCard(),
                ThumbCard(),
                ThumbCard(),
                ThumbCard(),
                SizedBox(width: 5),
              ],
            ),
          ),
          SizedBox(
              height: 15
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  'See more',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 14),
                    color: Colors.grey,
                  ),)
              ],
            ),
          ), // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 15,
                children: const [
                  CategoryCard(title: 'Title1', thumbnailUrl: 'https://rb.gy/fsoogv', content: 'test',),
                  CategoryCard(title: 'Title1', thumbnailUrl: 'https://rb.gy/fsoogv', content: 'test',),
                  CategoryCard(title: 'Title1', thumbnailUrl: 'https://rb.gy/fsoogv', content: 'test',),
                  CategoryCard(title: 'Title1', thumbnailUrl: 'https://rb.gy/fsoogv', content: 'test',),
                  CategoryCard(title: 'Title1', thumbnailUrl: 'https://rb.gy/fsoogv', content: 'test',),
                ],
              ),
            ),
          ),
          SizedBox(
              height: 15
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'List View',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  'See more',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 14),
                    color: Colors.grey,
                  ),)
              ],
            ),
          ), // [title]
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Wrap(
              runSpacing: 10,
                children: [
                  ListCard(),
                  ListCard(),
                  ListCard(),
                  ListCard(),
                  ListCard(),
                ]),
          ),
          SizedBox(
            height: 15,
          )//List Views
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'home',
            // backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
            label: 'home',
            // backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: 'home',
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
