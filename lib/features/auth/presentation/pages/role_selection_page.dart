import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/auth_provider.dart';

class RoleSelectionPage extends ConsumerWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(authProvider.notifier);

    void selectRole(String role) {
      authNotifier.setRole(role);

      if (role == "customer") {
        Navigator.pushNamed(context, "/customer-dashboard");
      } else if (role == "delivery") {
        Navigator.pushNamed(context, "/delivery-dashboard");
      } else if (role == "plant") {
        Navigator.pushNamed(context, "/plant-dashboard");
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Your Role"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 20),

            const Text(
              "Who are you?",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            /// CUSTOMER
            GestureDetector(
              onTap: () => selectRole("customer"),
              child: roleCard(
                icon: Icons.person,
                title: "Customer",
                subtitle: "Order water easily",
              ),
            ),

            const SizedBox(height: 15),

            /// DELIVERY BOY
            GestureDetector(
              onTap: () => selectRole("delivery"),
              child: roleCard(
                icon: Icons.delivery_dining,
                title: "Delivery Boy",
                subtitle: "Deliver water & earn money",
              ),
            ),

            const SizedBox(height: 15),

            /// PLANT OWNER
            GestureDetector(
              onTap: () => selectRole("plant"),
              child: roleCard(
                icon: Icons.factory,
                title: "Plant Owner",
                subtitle: "Manage your water plant",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget roleCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Row(
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(subtitle),
            ],
          )
        ],
      ),
    );
  }
}
