import 'package:flutter/material.dart';

void main() {
  runApp(LaundryApp());
}

class LaundryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laundry App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laundry App Dashboard'),
      ),
      body: Column(
        children: [
          // Top Menu Bar
          Container(
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMenuItem(context, 'Home'),
                _buildMenuItem(context, 'Orders'),
                _buildMenuItem(context, 'Payments'),
                _buildUserProfile(context),
              ],
            ),
          ),
          // Main Content Area
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text('Your Dashboard Content Goes Here'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          // Handle menu item tap
        },
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text('Edit Profile'),
            value: 'edit_profile',
          ),
          PopupMenuItem(
            child: Text('Logout'),
            value: 'logout',
          ),
        ],
        onSelected: (value) {
          // Handle user profile actions
          if (value == 'edit_profile') {
            // Navigate to edit profile screen
          } else if (value == 'logout') {
            // Perform logout action
          }
        },
        child: Icon(Icons.account_circle),
      ),
    );
  }
}
