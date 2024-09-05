import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Basic background color
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 10), // Spacing around the container
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey, // Icon color
          ),
          SizedBox(width: 10), // Space between icon and text field
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey), // Hint text color
                border: InputBorder.none, // No border
              ),
            ),
          ),
        ],
      ),
    );
  }
}
