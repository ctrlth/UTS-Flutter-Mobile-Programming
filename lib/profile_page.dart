// lib/profile_page.dart
import 'package:flutter/material.dart';
import 'package:percobaan/home_page.dart';
import 'package:percobaan/login_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profle.jpg'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fendi Saputra',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text('fendisaputra660@gmail.com'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('NOTHING', style: TextStyle(color: Colors.pink)),
                    Text('25', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    Text('Matched', style: TextStyle(color: Colors.purple)),
                    Text('99%', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Country'),
              subtitle: Text('INDONESIA,Salatiga'),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              subtitle: Text('Indonesia'),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title:
                  Text('Tombol Log Out', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
