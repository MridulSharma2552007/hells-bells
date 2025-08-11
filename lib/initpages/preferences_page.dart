import 'package:flutter/material.dart';
import 'package:hells_bells/colors/app_colors.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: PageView(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.brown,
                ),
                
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue),    
                Container(
                  height: 100,        
                  width: 100,
                  color: Colors.green),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
