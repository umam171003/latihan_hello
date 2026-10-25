import 'package:flutter/material.dart';

void main() {
  runApp(const UmamApp());
}

//stl
class UmamApp extends StatelessWidget {
  const UmamApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Mahasiswa',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),

      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      themeMode: ThemeMode.dark,

      //halaman pertama
      home: const ProfilePage(),
    );
    
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Profil')),
      body: const Center(
        child: Text(
          'Muhammad Umam Khaerurojikin',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
