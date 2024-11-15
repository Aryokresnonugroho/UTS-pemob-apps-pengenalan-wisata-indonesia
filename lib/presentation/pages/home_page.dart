import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  HomePage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add the image from assets
            Image.asset(
              'assets/images/image.png',  // Fixed typo in asset path
              width: 200,  // Set the width of the image
              height: 200,  // Set the height of the image
            ),
            SizedBox(height: 20),  // Space between image and text
            Text(
              'Selamat Datang di Aplikasi Wisata Curug Pangeran!', // Updated welcome text
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      selectedIndex: 0,  // Home tab is selected
      controller: controller,
    );
  }
}
