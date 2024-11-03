// lib/home_page.dart
import 'package:flutter/material.dart';
import 'login_page.dart'; // Pastikan untuk mengimpor halaman login
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.red],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(150.0),
                child: Image.asset('assets/images/profle.jpg',
                    height: 300, width: 300, fit: BoxFit.cover),
              ),
              SizedBox(height: 20),
              Text(
                'Fendi Saputra',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'I am 25 years old',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Di sekitar mu eheheheh',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white60, size: 50),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    icon: Icon(Icons.favorite,
                        color: Colors.blueAccent, size: 50),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
