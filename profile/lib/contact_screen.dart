import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("How to Contact Me")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: Icon(Icons.email),
              title: Text("alaa.elbestawy@gmail.com"),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("+20 102365639"),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Alaa Abdallah"),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}