import 'package:flutter/material.dart';
import 'profile_page.dart';

class WelcomePage extends StatelessWidget {
  final String name;
  final String gender;

  WelcomePage({required this.name, required this.gender});

  @override
  Widget build(BuildContext context) {
    String profileImage = gender == 'Pria'
        ? 'assets/male_icon.jpeg'
        : 'assets/female_icon.jpeg';

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selamat datang, $name!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(profileImage),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ProfilePage(name: name, gender: gender),
                    ));
                  },
                  child: Text('Lihat Profil'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
