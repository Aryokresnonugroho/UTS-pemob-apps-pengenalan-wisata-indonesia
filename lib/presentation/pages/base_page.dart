import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class BasePage extends StatelessWidget {
  final Widget bodyContent;
  final int selectedIndex;
  final HomeController _controller;

  const BasePage({
    Key? key,
    required this.bodyContent,
    required this.selectedIndex,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(width: 8),
              Text(
                'CURUG PANGERAN',
                style: TextStyle(
                  color: Colors.black, // Text color
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue, // Changed to light blue color
        elevation: 0, // Remove any shadow/elevation effect
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE1EAD9),
          border: Border.all(color: Color.fromARGB(255, 164, 184, 255), width: 3),
        ),
        child: bodyContent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections), label: 'Gambar'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.lightBlue,
        onTap: _controller.onBottomNavTapped,
      ),
    );
  }
}
