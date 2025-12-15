import 'package:flutter/material.dart';

class Doctor {
  final String name;
  final String specialty;
  final String hospital;
  final double rating;
  final String image;

  const Doctor({
    required this.name,
    required this.specialty,
    required this.hospital,
    required this.rating,
    required this.image,
  });
}

class DoctorListPage extends StatelessWidget {
  const DoctorListPage({super.key});

  // Sample doctor data
  final List<Doctor> doctors = const [
    Doctor(
      name: 'Dr. Sarah Johnson',
      specialty: 'Cardiologist',
      hospital: 'City General Hospital',
      rating: 4.8,
      image: '👩‍⚕️',
    ),
    Doctor(
      name: 'Dr. Michael Chen',
      specialty: 'Dermatologist',
      hospital: 'Skin Care Clinic',
      rating: 4.6,
      image: '👨‍⚕️',
    ),
    Doctor(
      name: 'Dr. Emily Davis',
      specialty: 'Pediatrician',
      hospital: 'Children\'s Medical Center',
      rating: 4.9,
      image: '👩‍⚕️',
    ),
    Doctor(
      name: 'Dr. Robert Wilson',
      specialty: 'Orthopedic Surgeon',
      hospital: 'Orthopedic Institute',
      rating: 4.7,
      image: '👨‍⚕️',
    ),
    Doctor(
      name: 'Dr. Lisa Anderson',
      specialty: 'Gynecologist',
      hospital: 'Women\'s Health Center',
      rating: 4.5,
      image: '👩‍⚕️',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Doctors'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Text(
                doctor.image,
                style: const TextStyle(fontSize: 40),
              ),
              title: Text(
                doctor.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.specialty,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(doctor.hospital),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Text(
                        ' ${doctor.rating}',
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/reservation');
                },
                child: const Text('Book'),
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
