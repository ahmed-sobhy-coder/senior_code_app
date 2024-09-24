// bottom_navigation_bar.dart
import 'package:flutter/material.dart';
import 'package:senior_code_app/exports.dart';
import '../../../featuers/home/presentation/screens/home_screen.dart';
import '../../../featuers/reservation/presentation/screen/reservation_screen.dart';
import 'bottom_navigation_bar_body.dart'; // Import the new BottomNavBarBody widget

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 2; // Default to Home

  // List of screens for each tab
  final List<Widget> screens = [
    const ProfileScreen(),
    const ReservationScreen(),
    const HomeScreen(),
    const ReviewsScreen(),
    const ChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBarBody(
        selectedIndex: selectedIndex,
        onItemTapped: _onItemTapped, // Pass the callback function
      ),
    );
  }
}

//! This screens will be removed in the next commits of the project...
// Profile Screen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Screen',
      ),
    );
  }
}
// Reviews Screen
class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Reviews Screen',
      ),
    );
  }
}

// Chat Screen
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Chat Screen',
      ),
    );
  }
}
