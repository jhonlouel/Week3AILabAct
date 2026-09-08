import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

// ==================== FIRST SCREEN ====================


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enriquez, Jhon Louel',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'BSIT',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 10),

            Text(
              'Global Reciprocal Colleges',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              },
              child: Text('About Me'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== SECOND SCREEN ====================

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 20),

            Text(
              'About Me',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Ako po si Enriquez Jhon Louel. '
                'Mahilig akong manood ng mga movies at makinig ng music. '
                'Yun lang po.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdScreen(),
                  ),
                );
              },
              child: Text('My Skills'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== THIRD SCREEN ====================

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Skills'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Skills',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              '• HTML and CSS',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 10),

            Text(
              '• Flutter and Dart',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 10),

            Text(
              '• PHP and MySQL',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 10),

            Text(
              '• Basic JavaScript',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FourthScreen(),
                  ),
                );
              },
              child: Text('My Project'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== FOURTH SCREEN ====================

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Project'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Project',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Smart Parking Reservation System',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'A system that allows users to reserve '
                'parking spaces and check available parking slots.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FifthScreen(),
                  ),
                );
              },
              child: Text('Contact Me'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== FIFTH SCREEN ====================
class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Email: ejhonlouel@gmail.com.com',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 10),

            Text(
              'Phone: 09940747817',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstScreen(),
                  ),
                  (route) => false,
                );
              },
              child: Text('Back to First Page'),
            ),
          ],
        ),
      ),
    );
  }
}