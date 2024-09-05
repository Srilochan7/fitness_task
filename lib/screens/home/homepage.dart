import 'package:fitness_task/screens/home.dart';
import 'package:fitness_task/widgets/popular_workouts.dart';
import 'package:fitness_task/widgets/search_bar.dart';
import 'package:fitness_task/widgets/today_plan.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      // Adding the AppBar with Drawer trigger
      appBar: AppBar(
        // Add the Drawer trigger
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();  // This opens the drawer
            },
          ),
        ),
        title: Text('Let\'s go Lochan'),
      ),
      drawer: Home(), // Use the Home's drawer method here
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Search(), // Search Bar
              const SizedBox(height: 20),
              const Expanded(child: PopularWorkouts()), // Popular Workouts Section
              const SizedBox(height: 10),
              Expanded(child: TodayPlan()), // Today Plan Section
            ],
          ),
        ),
      ),
    );
  }
}
