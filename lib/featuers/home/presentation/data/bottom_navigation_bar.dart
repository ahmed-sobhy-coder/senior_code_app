import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/exports.dart';
import '../../../../config/routes/routes_exports.dart';
import 'bottom_navigation_bar_item.dart';

class BottomNivigationBar extends StatefulWidget {
  const BottomNivigationBar({super.key});

  @override
  State<BottomNivigationBar> createState() => _BottomNivigationBarState();
}

class _BottomNivigationBarState extends State<BottomNivigationBar> {
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
      bottomNavigationBar: Container(
        height: 120.h, // The height of the bottom navigation bar
        decoration: const BoxDecoration(
          color: AppColors.white, // The background color
        ),
        //! To disable the splash effect in a BottomNavigationBar, you can wrap
        //! it in a Theme widget and change the splashColor and
        //! highlightColor values. Use the following code:
        // child: Theme(
        //   data: ThemeData(
        //     splashColor: Colors.transparent,
        //     highlightColor: Colors.transparent,
        //   ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.white,
          items: <BottomNavigationBarItem>[
            buildBottomNavBarItem(
              asset: AppAssets.profileIcon,
              activeAsset: AppAssets.profileIcon, // The new image when selected
              height: 24.49,
              width: 27,
              label: 'Profile',
              isSelected: selectedIndex == 0,
            ),
            buildBottomNavBarItem(
              asset: AppAssets.reservationIcon,
              activeAsset:
                  AppAssets.reservationIcon, // The new image when selected
              height: 24.49,
              width: 27,
              label: 'Reservation',
              isSelected: selectedIndex == 1,
            ),
            buildBottomNavBarItem(
              asset: AppAssets.homeIcon,
              activeAsset: AppAssets.homeIcon, // The new image when selected
              height: 24.49,
              width: 27,
              label: 'Home',
              isSelected: selectedIndex == 2,
            ),
            buildBottomNavBarItem(
              asset: AppAssets.reviewsIcon,
              activeAsset: AppAssets.reviewsIcon, // The new image when selected
              height: 24.49,
              width: 27,
              label: 'Reviews',
              isSelected: selectedIndex == 3,
            ),
            buildBottomNavBarItem(
              asset: AppAssets.chatIcon,
              activeAsset: AppAssets.chatIcon, // The new image when selected
              height: 24.49,
              width: 27,
              label: 'Chats',
              isSelected: selectedIndex == 4,
            ),
          ],
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          showUnselectedLabels: true,
        ),
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

// Reservation Screen
class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Reservation Screen',
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
