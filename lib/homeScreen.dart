import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<dynamic> movies=[];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://api.tvmaze.com/search/shows?q=all') );
    if (response.statusCode == 200) {
      setState(() {
        movies = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body:  movies.isEmpty
          ? const Center(
        child: CircularProgressIndicator(), // Show a loading indicator
      )
          : ListView.builder(
             itemCount: movies.length,
             itemBuilder: (context, index) {
               return ListTile(
leading: SizedBox(height: 50,width: 50,
    child: Image.network(movies[index]['show']['image']['original'])),
                 title: Text(movies[index]['show']['name']),

                 subtitle: Text(movies[index]['show']['summary']),
                 onTap: () {
                   Navigator.pushNamed(context, '/details', arguments: movies[index]['show']);
                 },
               );
             },
           ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/search');
          }
        },
      ),
    );
  }
}
