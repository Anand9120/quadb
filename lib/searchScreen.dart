// search_screen.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'Search movies',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              _searchMovies();
            },
          ),
        ],
      ),
      body:
      searchResults.isEmpty
          ? const Center(
        child: CircularProgressIndicator(), // Show a loading indicator
      )
          :ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(searchResults[index]['show']['name']),
            subtitle: Text(searchResults[index]['show']['summary']),
            onTap: () {
              Navigator.pushNamed(context, '/details', arguments: searchResults[index]['show']);
            },
          );
        },
      ),
    );
  }

  Future<void> _searchMovies() async {
    final response = await http.get(Uri.parse('https://api.tvmaze.com/search/shows?q=${_searchController.text}' ));
    if (response.statusCode == 200) {
      setState(() {
        searchResults = json.decode(response.body);
      });
    }
  }
}

