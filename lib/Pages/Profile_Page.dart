import 'package:flutter/material.dart';
import 'package:paymentwallet/Pages/Edit_Profile_Page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6EE),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'images/avatar 2.jpeg',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(75),
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                      ),
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                            )),
                        child: const Text(
                          'Full Name',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                            )),
                        child: const Text(
                          'Email',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
