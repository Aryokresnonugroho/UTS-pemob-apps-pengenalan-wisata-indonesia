import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class GambarPage extends StatelessWidget {
  final HomeController controller;

  GambarPage(this.controller);

  // Sample list of image assets to simulate Instagram-like photo collection
  final List<String> imagePaths = [
    'assets/images/4b7ed4e827cfd00d0d085984331503fb.jpg',
    'assets/images/2806332023-pangeran-4.jpg',
    'assets/images/Curug-Pangeran-819x1024.jpg',
    'assets/images/Curug-Pangeran-Pamijahan.jpg',
    'assets/images/curugpangerann-163378812345987-9182e616f52c61573682ca3f0853b565.jpg',
    'assets/images/images.jpg',
    'assets/images/Untitled-1.jpg',
    'assets/images/Untitled.jpg',
    'assets/images/images-1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              // Profile Header removed (username and profile picture)

              SizedBox(height: 16), // Space before the grid of images

              // GridView of photos
              GridView.builder(
                shrinkWrap: true, // To avoid overflow in scroll view
                physics: NeverScrollableScrollPhysics(), // Disable grid scrolling to allow for parent scroll
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns (3 columns)
                  crossAxisSpacing: 8.0, // Space between columns
                  mainAxisSpacing: 8.0, // Space between rows
                  childAspectRatio: 1, // Aspect ratio of each grid item (square shape)
                ),
                itemCount: imagePaths.length, // Number of images in the list (9 images)
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      imagePaths[index], // Image path from the list
                      fit: BoxFit.cover, // Ensure image covers the grid cell
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      selectedIndex: 1, // Profile tab is selected
      controller: controller,
    );
  }
}
