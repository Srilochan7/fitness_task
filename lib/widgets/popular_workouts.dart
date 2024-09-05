import 'package:flutter/material.dart';

class PopularWorkouts extends StatefulWidget {
  const PopularWorkouts({super.key});

  @override
  State<PopularWorkouts> createState() => _PopularWorkoutsState();
}

class _PopularWorkoutsState extends State<PopularWorkouts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Workouts',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Container(
          height: 200, // Increased height for better visuals
          child: PageView(
            children: [
              _buildWorkoutCard(
                'assets/images/lower_body_training.png',
                'Lower Body Training',
                '500 Kcal',
                '50 Min',
              ),
              _buildWorkoutCard(
                'assets/images/hand_stand_training.png',
                'Handstand Training',
                '600 Kcal',
                '40 Min',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWorkoutCard(String imagePath, String title, String kcal, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                imagePath,
                height: 100, // Adjusted height
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(kcal, style: TextStyle(color: Colors.grey)),
                      Text(time, style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(width: 110),
                  ElevatedButton(onPressed: (){

                  },
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.black,
                    backgroundColor: Color(0xFFBBF246),
                    shape: CircleBorder()
                  ),
                  child: Icon(Icons.play_arrow))
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
