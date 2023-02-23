// import 'package:flutter/material.dart';
// import 'package:test_dart/views/screens/home_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tech Crunch',
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class Book {
  final int? id;
  final String? name;
  final String? author;
  final String? description;

  Book({required this.id, required this.name, required this.author, required this.description});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: int.parse(json['id']),
      name: json['name'],
      author: json['author'],
      description: json['description'],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books Demo',
      home: BookListScreen(),
    );
  }
}

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  Future<List<Book>> _futureBooks = fetchData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Books"),
      ),
      body: FutureBuilder(future: _futureBooks, builder: (context, AsyncSnapshot<List<Book>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var book = snapshot.data![index];
                return ListTile(
                  title: Text(book.name ?? "No name"),
                  subtitle: Text(book.author ?? "No author"),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Future<List<Book>> fetchData() async {
  var url = Uri.parse('https://app.dharaniandteam.com/getalldatas.php');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    List<Book> books = [];

    for (var bookJson in jsonResponse['test']) {
      books.add(Book.fromJson(bookJson));
    }

    return books;
  } else {
    throw Exception('Failed to load data');
  }
}






