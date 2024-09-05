import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top Calendar Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var day in ['S', 'M', 'T', 'W', 'T', 'F', 'S'])
                  DayCircle(day: day, isSelected: day == 'T'),
              ],
            ),
            SizedBox(height: 20),
            // Today's Report Section
            Text(
              'Today Report',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ActivityCard(
                    title: 'Active calories',
                    value: '645 Cal',
                    color: Colors.blueAccent,
                    child: CircularIndicator(percentage: 80),
                  ),
                  ActivityCard(
                    title: 'Cycling',
                    value: '',
                    color: Colors.black,
                    child: Icon(Icons.directions_bike, color: Colors.white),
                  ),
                  ActivityCard(
                    title: 'Heart Rate',
                    value: '79 Bpm',
                    color: Colors.redAccent,
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                  ActivityCard(
                    title: 'Steps',
                    value: '999/2000',
                    color: Colors.orangeAccent,
                    child: Icon(Icons.directions_walk, color: Colors.white),
                  ),
                  ActivityCard(
                    title: 'Sleep',
                    value: '',
                    color: Colors.purpleAccent,
                    child: Icon(Icons.bedtime, color: Colors.white),
                  ),
                  ActivityCard(
                    title: 'Water',
                    value: '6/8 Cups',
                    color: Colors.lightBlueAccent,
                    child: Icon(Icons.local_drink, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: ''),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class DayCircle extends StatelessWidget {
  final String day;
  final bool isSelected;

  const DayCircle({
    Key? key,
    required this.day,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: isSelected ? Colors.black : Colors.greenAccent,
      child: Text(
        day,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final Widget child;

  const ActivityCard({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Expanded(child: Center(child: child)),
        ],
      ),
    );
  }
}

class CircularIndicator extends StatelessWidget {
  final int percentage;

  const CircularIndicator({
    Key? key,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: percentage / 100.0,
      backgroundColor: Colors.white,
      color: Colors.blueAccent,
    );
  }
}

void main() {
  runApp(MaterialApp(home: Analytics()));
}
