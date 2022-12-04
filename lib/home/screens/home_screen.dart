import 'package:flutter/material.dart';

import '../../auth/screens/auth_screen.dart';
import '../../common/widgets/alert_dialog.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void signOut() {
    Navigator.pushNamed(context, AuthScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/logo2.png",
              fit: BoxFit.contain,
              height: 40,
            ),
            GestureDetector(
              onTap: () async {
                final action = await AlertDialogs.yesCancelDialog(
                    context,
                    'Logout',
                    'Are you sure you want to log out from the console?');
                if (action == DialogsAction.Yes) {
                  signOut();
                } else {}
              },
              child: const Icon(
                Icons.logout,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/doctor.png",
                    height: 100,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "My Profile",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Dr. Ali",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Patient list for today",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient.png",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient3.png",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient2.jpg",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  Text(
                    "Tomorrow",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient.png",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient2.jpg",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient3.png",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  Text(
                    "Tomorrow",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient2.jpg",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient.png",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient3.png",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  Text(
                    "Tomorrow",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient2.jpg",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient.png",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text("Dummy Text"),
                    subtitle: Text("Dummy"),
                    leading: Image.asset(
                      "assets/images/patient3.png",
                      height: 50,
                      width: 50,
                    ),
                    dense: true,
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
