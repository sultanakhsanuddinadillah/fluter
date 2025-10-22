import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilDiriApp());
}

class ProfilDiriApp extends StatelessWidget {
  const ProfilDiriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Diri',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Diri'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FOTO PROFIL
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'), // ganti sesuai gambar kamu
            ),
            const SizedBox(height: 20),

            // NAMA DAN DESKRIPSI
            const Text(
              'Sultan Adil',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Mahasiswa Informatika | Flutter Developer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),

            // ICON BAR
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 8),
                Text('sultanadil@email.com'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 8),
                Text('+62 812-3456-7890'),
              ],
            ),
            const SizedBox(height: 30),

            // TOMBOL
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Halo, ini profil Sultan Adil!')),
                );
              },
              icon: const Icon(Icons.info_outline),
              label: const Text('Tampilkan Pesan'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

