import 'package:firebase_analytics_demo/analytics_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../injection_container.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final AnalyticsService analyticsService = sl<AnalyticsService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Firebase Analytics',
          style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent),
              onPressed: () {
                analyticsService.logEvent(name: "Login_Event", parameters: {
                  'Email': 'anikbubtcse@gmail.com',
                  'Password': "123456"
                });
              },
              child: Text("Add Event",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent),
              onPressed: () {
                throw Exception();
              },
              child: Text("Check Crashlytics",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
