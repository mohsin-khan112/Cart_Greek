import 'package:cart_greek_assignment/constant/app_colors.dart';
import 'package:cart_greek_assignment/constant/app_image_path.dart';
import 'package:cart_greek_assignment/view/home-screen/home_screen.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int? index;
  int bottomIndex = 0;
  List<Widget>? bottomNavigationItemList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bottomNavigationItemList = [
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: bottomIndex,
        children: bottomNavigationItemList!,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: Colors.red,
        unselectedItemColor: AppColors.textColor,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: bottomIndex,
        onTap: (value) {
          setState(() {
            bottomIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: ImageIcon(
              AssetImage(
                AppImagePath.home,
              ),
              size: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "Packages",
            icon: ImageIcon(
              AssetImage(
                AppImagePath.sale,
              ),
              size: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "Bookings",
            icon: ImageIcon(
              AssetImage(
                AppImagePath.clock1,
              ),
              size: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: ImageIcon(
              AssetImage(
                AppImagePath.profile1,
              ),
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
