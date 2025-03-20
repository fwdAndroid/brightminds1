import 'package:brightminds/screens/auth/login_screen.dart';
import 'package:brightminds/screens/pages/settings/app_introduction.dart';
import 'package:brightminds/screens/pages/settings/privacy_policy.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Profile Section
            Center(
              child: Column(
                children: [
                  StreamBuilder<Object>(
                      stream: FirebaseFirestore.instance
                          .collection("users")
                          .doc(FirebaseAuth.instance.currentUser!.uid)
                          .snapshots(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        }
                        if (!snapshot.hasData || snapshot.data == null) {
                          return Center(child: Text('No data available'));
                        }
                        var snap = snapshot.data;
                        return Column(
                          children: [
                            Text(
                              snap['name'] ?? "Name is not Set",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              snap['gender'],
                            ),
                            Text(
                              snap['age'] ?? "No Age Defined",
                            )
                          ],
                        );
                      }),
                  Text(
                    'Course Study Record Report',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Report Cards Section

            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => AppIntroduction()));
                },
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
                leading: Icon(
                  Icons.interests_rounded,
                ),
                title: Text(
                  "App Introduction",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => PrivacyPolicy()));
                },
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
                leading: Icon(
                  Icons.info,
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
            ),

            Card(
              child: ListTile(
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (builder) => LoginPage()));
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Logout Sucessfully")));
                },
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
                leading: Icon(
                  Icons.logout,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
