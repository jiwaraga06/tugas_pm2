import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String gender;

  ProfilePage({required this.name, required this.gender});

  @override
  Widget build(BuildContext context) {
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
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    gender == 'Pria'
                        ? 'assets/male_icon.jpeg'
                        : 'assets/female_icon.jpeg',
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Biodata',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text('Nama: $name', style: TextStyle(color: Colors.black)),
                      Text('Hobi: Membaca Buku', style: TextStyle(color: Colors.black)),
                      Text('Tanggal Lahir: 12 Maret 2000', style: TextStyle(color: Colors.black)),
                      Text('Alamat: Jalani hari tanpa dia', style: TextStyle(color: Colors.black)),
                      Text('Gender: $gender', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
