import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  List<String> _suggestions = []; // Placeholder for suggestion items

  void _searchMeal(String query) {
    // TODO: Implement search logic or API integration
    // Dummy implementation for demonstration
    setState(() {
      _suggestions = ['Meal 1', 'Meal 2', 'Meal 3']; // Example suggestions
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personalized Meal Plan')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Search for a meal',
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: _searchMeal,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _suggestions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_suggestions[index]),
                  onTap: () {
                    // TODO: Implement add to plan logic
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
