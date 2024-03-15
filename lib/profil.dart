import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Profil'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        actions: [ // Tambahkan bagian ini untuk menambahkan tombol aksi di appbar
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Tambahkan logika untuk mengedit profil di sini
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/profilicon.jpg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Center(
              child: Text(
                'Nama Pengguna',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey[900]),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Status Pesanan',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey[900]),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  OrderStatusCard(
                    status: 'Belum Bayar',
                    onTap: () {
                      // Tambahkan logika untuk menampilkan pesanan belum bayar
                    },
                    icon: Icons.payment,
                  ),
                  OrderStatusCard(
                    status: 'Dikemas',
                    onTap: () {
                      // Tambahkan logika untuk menampilkan pesanan yang sudah dikemas
                    },
                    icon: Icons.shopping_bag,
                  ),
                  OrderStatusCard(
                    status: 'Dikirim',
                    onTap: () {
                      // Tambahkan logika untuk menampilkan pesanan yang sudah dikirim
                    },
                    icon: Icons.local_shipping,
                  ),
                  OrderStatusCard(
                    status: 'Beri Penilaian',
                    onTap: () {
                      // Tambahkan logika untuk memberikan penilaian
                    },
                    icon: Icons.star,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderStatusCard extends StatelessWidget {
  final String status;
  final VoidCallback onTap;
  final IconData icon;

  const OrderStatusCard({
    required this.status,
    required this.onTap,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, color: Colors.blueGrey[900]),
        title: Text(
          status,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey[900]),
        ),
        onTap: onTap,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}