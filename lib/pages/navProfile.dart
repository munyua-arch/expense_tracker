import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Icon(Icons.camera_alt_outlined),
                  backgroundColor: Colors.blueAccent,
                  radius: 30,
                ),

                //logout button
                IconButton(
                    onPressed: (){
                      print('Logging out...');
                      Navigator.pushNamed(context, '/login');
                    },
                    icon: Icon(Icons.logout),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
