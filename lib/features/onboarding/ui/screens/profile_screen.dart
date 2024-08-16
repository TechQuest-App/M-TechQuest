import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPointsSection(),
            const SizedBox(height: 32),
            _buildMenuItem(Icons.person_outline, 'Profile',
                'Edit your password, name, address, shoes size'),
            const SizedBox(height: 24),
            _buildMenuItem(Icons.security_outlined, 'Security',
                'FaceID, Two-step verification'),
            const SizedBox(height: 24),
            _buildMenuItem(Icons.settings_outlined, 'Settings',
                'Payment Method, Shipping Address, Notifications'),
            const SizedBox(height: 32),
            _buildSimpleMenuItem('Rate Application'),
            Divider(height: 32, thickness: 1, color: Colors.grey[300]),
            _buildSimpleMenuItem('Reviews'),
            Divider(height: 32, thickness: 1, color: Colors.grey[300]),
            _buildCurrencyMenuItem(),
            const SizedBox(height: 40),
            // Space before the Sign Out text
            Center(
              child: TextButton(
                onPressed: () {
                  // to be implemented
                  //add a variable to control which page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Placeholder(),
                      ));
                },
                style: ButtonStyle(
                  padding: WidgetStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(0)),
                ),
                child: const Text(
                  'Sign Out',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Spacer(),
            // Space before the bottom navigation bar
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildPointsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: const Row(
        children: [
          Icon(Icons.star, color: Colors.amber, size: 24),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              'Your Currently Points',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            '400',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, String subtitle) {
    return TextButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.all(0)),
      ),
      onPressed: () {
        // to be implemented
        //add a variable to control which page
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Placeholder(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(icon, size: 24, color: Colors.black87),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const SizedBox(height: 4),
                  Text(subtitle,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSimpleMenuItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          IconButton(
              constraints: const BoxConstraints(),
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              padding: EdgeInsets.zero,
          onPressed: (){// to be implemented
             },
              icon: const Icon(Icons.chevron_right, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildCurrencyMenuItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Currency',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Row(
            children: [
              const Text('USD', style: TextStyle(color: Colors.blue, fontSize: 16)),
              const SizedBox(width: 4),
              IconButton(
                padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap,),
                  onPressed: (){// to be implemented
                  },
                  icon: const Icon(Icons.chevron_right, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.white,
      // ignore: prefer_const_literals_to_create_immutables
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: 'Home'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined), label: 'My courses'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline), label: 'Clips'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: 'Wishlist'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
      onTap: (index) => setState(() => _selectedIndex = index),
    );
  }
}
