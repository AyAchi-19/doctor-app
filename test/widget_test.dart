// This is a basic Flutter widget test for the Doctor Reservation App.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:doctor_reservation_app/main.dart';

void main() {
  testWidgets('Doctor Reservation App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const DoctorReservationApp());

    // Verify that our app title is displayed
    expect(find.text('Doctor Reservation App'), findsOneWidget);

    // Verify that the welcome text is displayed
    expect(find.text('Welcome to Doctor Reservation'), findsOneWidget);

    // Verify that navigation buttons are present
    expect(find.text('Find Doctors'), findsOneWidget);
    expect(find.text('My Reservations'), findsOneWidget);
  });
}
