import 'package:flutter/material.dart';

class ThumbCard extends StatelessWidget {
  const ThumbCard({Key? key}) : super(key: key);
  final String networkUrl = 'https://images.pexels.com/photos/14526938/pexels-photo-14526938.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width*0.3,
        height: MediaQuery.of(context).size.width*0.3,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.grey,
          image: DecorationImage(
            image: NetworkImage(networkUrl),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}
