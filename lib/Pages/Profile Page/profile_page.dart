import 'package:flutter/material.dart';

import '../Home Page/home_page.dart';
import '../My Cart/cart_screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B455E),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: textColor,
              size: 25,
            )),
        title: const Text(
          'Profile',
          style: TextStyle(
              color: textColor, fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Profile/MainLogo2.png'),
                radius: 45.0,
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: textColor,
            ),
            const SizedBox(
              height: 10.0,
            ),
            buildMenuItem(
                text: 'Home',
                icon: Icons.widgets_outlined,
                onClicked: () {
                  Navigator.push(
                      context, CustomPageRoute(child: const HomePage()));
                }),
            buildMenuItem(
                text: 'Cart',
                icon: Icons.shopping_cart_outlined,
                onClicked: () {
                  Navigator.push(
                      context, CustomPageRoute(child: const MyCart()));
                }),
            buildMenuItem(
                text: 'Add Product',
                icon: Icons.add_a_photo_outlined,
                onClicked: () {}),
            buildMenuItem(
                text: 'Notifications',
                icon: Icons.notifications_outlined,
                onClicked: () {}),
            buildMenuItem(text: 'Log Out', icon: Icons.lock, onClicked: () {}),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(
          icon,
          color: secColor,
          size: 25,
        ),
        title: Text(text, style: const TextStyle(color: color, fontSize: 17.0)),
        onTap: onClicked,
      ),
    );
  }
}
