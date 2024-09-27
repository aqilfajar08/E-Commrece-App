import 'package:e_commerce_ui_aplication1/pages/loginPage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            // Bagian header dengan gambar profil dan nama pengguna
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/300', // Gambar profil dummy
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Herman Miller",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "herman@miller.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Tombol aksi seperti Edit Profil, Pengaturan, dll.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _buildProfileOption(
                    icon: Icons.edit,
                    label: "Edit Profile",
                    onTap: () {
                      // Aksi edit profil
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.lock,
                    label: "Change Password",
                    onTap: () {
                      // Aksi ubah kata sandi
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.settings,
                    label: "Settings",
                    onTap: () {
                      // Aksi pengaturan
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.notifications,
                    label: "Notifications",
                    onTap: () {
                      // Aksi notifikasi
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.help_outline,
                    label: "Help & Support",
                    onTap: () {
                      // Aksi bantuan
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.logout,
                    label: "Logout",
                    onTap: () {
                       _showLoginConfirmationDialog(context); // Menampilkan popup konfirmasi
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan dialog konfirmasi login
  void _showLoginConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Login'),
          content: Text('Apakah kamu yakin ingin menuju ke halaman login?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
              child: Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()), // Arahkan ke halaman login
                );
              },
              child: Text('Ya'),
            ),
          ],
        );
      },
    );
  }

  // Fungsi untuk membangun widget opsi profil
  Widget _buildProfileOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        title: Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 18),
        onTap: onTap,
      ),
    );
  }
}



void main() => runApp(MaterialApp(
      home: ProfilePage(),
    ));