import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class AboutPage extends StatelessWidget {
  final HomeController controller;

  AboutPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title or Heading
              Text(
                'Tentang Curug Pangeran',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Font color changed to black
                ),
              ),
              SizedBox(height: 20), // Space between title and content

              // Description of Curug Pangeran in Bahasa Indonesia
              Text(
                'Curug Pangeran, yang juga dikenal sebagai Air Terjun Pangeran, adalah salah satu air terjun '
                'terkenal di daerah ini, yang terletak di hutan hijau subur di Jawa Barat, Indonesia. '
                'Air terjun yang menakjubkan ini adalah permata tersembunyi, menawarkan pemandangan yang luar biasa '
                'dan suasana yang tenang.'
                '\n\n'
                'Pengunjung dapat menikmati pendakian yang damai melalui jalur hutan yang menuju ke air terjun, '
                'di mana mereka akan disambut dengan kabut sejuk dan suara air yang menenangkan. '
                'Curug Pangeran tidak hanya merupakan tempat yang indah bagi pecinta alam, tetapi juga merupakan tempat '
                'yang sempurna untuk fotografi, piknik, dan bersantai di tengah keindahan alam.'
                '\n\n'
                'Air terjun ini dikelilingi oleh flora dan fauna yang kaya, menjadikannya destinasi yang sempurna untuk '
                'wisata ekologi. Baik Anda mencari pelarian dari hiruk-pikuk kehidupan kota atau sekadar ingin menikmati '
                'ketenangan alam, Curug Pangeran adalah tempat yang wajib dikunjungi.'
                '\n\n'
                'Waktu terbaik untuk mengunjungi adalah selama musim kemarau, dari April hingga Oktober, ketika aliran air '
                'berada pada puncaknya, menjadikan pemandangan semakin spektakuler.',
                style: TextStyle(fontSize: 16, color: Colors.black), // Font color changed to black
                textAlign: TextAlign.justify, // Justify text for better readability
              ),
            ],
          ),
        ),
      ),
      selectedIndex: 1, // About tab is selected
      controller: controller,
    );
  }
}
