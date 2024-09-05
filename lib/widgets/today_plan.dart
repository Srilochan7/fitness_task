import 'package:flutter/material.dart';

class TodayPlan extends StatefulWidget {
  const TodayPlan({super.key});

  @override
  State<TodayPlan> createState() => _TodayPlanState();
}

class _TodayPlanState extends State<TodayPlan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Today\'s Plan',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 35),

      ]
    );
  }
}




















// import 'package:flutter/material.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

// class TodayPlan extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Today Plan',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 15),
//         Container(
//           child: Column(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 padding: EdgeInsets.all(15),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       'assets/images/push_up.png',
//                       height: 60,
//                       width: 60,
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(width: 15),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Push Up',
//                             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                           ),
//                           Text('100 Push up a day'),
//                           SizedBox(height: 10),
//                           LinearPercentIndicator(
//                             lineHeight: 8.0,
//                             percent: 0.45,
//                             backgroundColor: Colors.grey[300],
//                             progressColor: Colors.green,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text('Intermediate'),
//                         SizedBox(height: 5),
//                         Text('45%', style: TextStyle(fontWeight: FontWeight.bold)),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 padding: EdgeInsets.all(15),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       'assets/images/sit_up.png',
//                       height: 60,
//                       width: 60,
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(width: 15),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Sit Up',
//                             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                           ),
//                           Text('20 Sit up a day'),
//                           SizedBox(height: 10),
//                           LinearPercentIndicator(
//                             lineHeight: 8.0,
//                             percent: 0.75,
//                             backgroundColor: Colors.grey[300],
//                             progressColor: Colors.green,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text('Beginner'),
//                         SizedBox(height: 5),
//                         Text('75%', style: TextStyle(fontWeight: FontWeight.bold)),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 padding: EdgeInsets.all(15),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       'assets/images/knee_push_up.png',
//                       height: 60,
//                       width: 60,
//                       fit: BoxFit.cover,
//                     ),
//                     SizedBox(width: 15),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Knee Push Up',
//                             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                           ),
//                           Text('50 Knee Push up a day'),
//                           SizedBox(height: 10),
//                           LinearPercentIndicator(
//                             lineHeight: 8.0,
//                             percent: 0.30,
//                             backgroundColor: Colors.grey[300],
//                             progressColor: Colors.green,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text('Beginner'),
//                         SizedBox(height: 5),
//                         Text('30%', style: TextStyle(fontWeight: FontWeight.bold)),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
