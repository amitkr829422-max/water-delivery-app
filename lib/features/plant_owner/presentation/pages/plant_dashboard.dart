import 'package:flutter/material.dart';

class PlantDashboard extends StatelessWidget {
  const PlantDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plant Owner Dashboard"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            _buildCard(
              title: "Add Products",
              icon: Icons.add_box,
              color: Colors.green,
            ),

            _buildCard(
              title: "Manage Orders",
              icon: Icons.shopping_cart,
              color: Colors.blue,
            ),

            _buildCard(
              title: "Delivery Boys",
              icon: Icons.delivery_dining,
              color: Colors.orange,
            ),

            _buildCard(
              title: "Reports",
              icon: Icons.bar_chart,
              color: Colors.purple,
            ),

          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(width: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
