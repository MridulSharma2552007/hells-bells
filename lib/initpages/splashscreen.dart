import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hells_bells/colors/app_colors.dart';
import 'package:hells_bells/initpages/preferences_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        // Navigate to the next screen after 3 seconds
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PreferencesPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
            ), // Ensure this path is correct
            SizedBox(height: 10),
            Text(
              'Welcome to Hells Bells!',
              style: GoogleFonts.pixelifySans(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
