import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/doctor_list_page.dart';
import 'pages/reservation_page.dart';

void main() {
  runApp(const DoctorReservationApp());
}

class DoctorReservationApp extends StatelessWidget {
  const DoctorReservationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Reservation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/doctors': (context) => const DoctorListPage(),
        '/reservation': (context) => const ReservationPage(),
      },
    );
  }
}
