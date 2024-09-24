import 'package:senior_code_app/exports.dart';
import 'bottom_navigation_bar_item.dart';

class BottomNavigationBarBody extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavigationBarBody({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    //! To disable the splash effect in a BottomNavigationBar, you can wrap
    //! it in a Theme widget and change the splashColor and
    //! highlightColor values. Use the following code:
    // child: Theme(
    //   data: ThemeData(
    //     splashColor: Colors.transparent,
    //     highlightColor: Colors.transparent,
    //   ),
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.white,
      items: <BottomNavigationBarItem>[
        buildBottomNavBarItem(
          asset: AppAssets.profileIcon,
          activeAsset: AppAssets.profileIcon,
          height: 24.49,
          width: 27,
          label: 'Profile',
          isSelected: selectedIndex == 0,
        ),
        buildBottomNavBarItem(
          asset: AppAssets.reservationIcon,
          activeAsset: AppAssets.reservationIcon,
          height: 24.49,
          width: 27,
          label: 'Reservation',
          isSelected: selectedIndex == 1,
        ),
        buildBottomNavBarItem(
          asset: AppAssets.homeIcon,
          activeAsset: AppAssets.homeIcon,
          height: 24.49,
          width: 27,
          label: 'Home',
          isSelected: selectedIndex == 2,
        ),
        buildBottomNavBarItem(
          asset: AppAssets.reviewsIcon,
          activeAsset: AppAssets.reviewsIcon,
          height: 24.49,
          width: 27,
          label: 'Reviews',
          isSelected: selectedIndex == 3,
        ),
        buildBottomNavBarItem(
          asset: AppAssets.chatIcon,
          activeAsset: AppAssets.chatIcon,
          height: 24.49,
          width: 27,
          label: 'Chats',
          isSelected: selectedIndex == 4,
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      showUnselectedLabels: true,
    );
  }
}
