import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:test_beauty_city/app_ex.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  ValueChanged<int> onItemSelected;

  CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _buildNavItem(Icons.home, 'nav_home_icon'.tr(), 0),
                  const SizedBox(width: 30),
                  _buildNavItem(Icons.search, 'nav_festival_icon'.tr(), 1),
                ],
              ),
              const SizedBox(width: 40),
              Row(
                children: [
                  _buildNavItem(Icons.notifications, 'nav_store_icon'.tr(), 2),
                  const SizedBox(width: 30),
                  _buildNavItem(Icons.person, 'nav_charity_icon'.tr(), 3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selectedIndex = index;
          widget.onItemSelected(index);
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: widget.selectedIndex == index ? Theme.of(context).colorScheme.primary : Colors.grey,
          ),
          const SizedBox(height: 4), // Spacing between icon and text
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: widget.selectedIndex == index ? Theme.of(context).colorScheme.primary : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
