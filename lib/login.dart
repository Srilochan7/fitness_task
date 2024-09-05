
import 'package:fitness_task/screens/home/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Please login into your account.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 40),
            Container(
          width: double.infinity,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFBBF246), // Background color
              hintText: 'Email or Phone number', // Hint text instead of labelText
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
                borderSide: BorderSide(color: Color(0xFFBBF246)), // Border color
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
                borderSide: BorderSide(color: Color(0xFFBBF246)), // Border color
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ),

            const SizedBox(height: 20),
            Container(
          width: double.infinity,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFBBF246), // Background color
              hintText: 'Password', // Hint text instead of labelText
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
                borderSide: BorderSide(color: Color(0xFFBBF246)), // Border color
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
                borderSide: BorderSide(color: Color(0xFFBBF246)), // Border color
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ),

            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0), 
                    ),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15.0)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "or continue with",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Sign-In with Google',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    ),
                  ),
                ],
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFD2D2D2)
),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  ),
                ),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
