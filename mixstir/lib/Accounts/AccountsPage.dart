import 'package:flutter/material.dart';
import 'package:mixstir/Accounts/profile_picture.dart';
import 'custom_icon_button.dart';
import 'custom_tab_bar.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired color
                borderRadius: BorderRadius.circular(
                    10), // Set the border radius for roundness
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Set shadow color
                    spreadRadius: 1, // Set shadow spread radius
                    blurRadius: 6, // Set blur radius
                    offset: Offset(0, 3), // Set offset
                  ),
                ],
              ),
              child: CustomIconButton(
                iconData: Icons.settings,
                onPressed: () {}, // Add settings navigation logic here
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired color
                borderRadius: BorderRadius.circular(
                    10), // Set the border radius for roundness
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Set shadow color
                    spreadRadius: 1, // Set shadow spread radius
                    blurRadius: 6, // Set blur radius
                    offset: Offset(0, 3), // Set offset
                  ),
                ],
              ),
              child: CustomIconButton(
                iconData: Icons.share,
                onPressed: () {}, // Add share functionality here
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile picture and user details
          ProfilePicture(
            imageUrl: 'https://via.placeholder.com/1000',
            onPressed: () {}, // Add profile picture navigation logic here
          ),
          // Tabs and their corresponding contents
          CustomTabBar(
            tabController: _tabController,
            userName: "Killer Mike",
            userTag: "@mikethekiller",
          )
        ],
      ),
    );
  }
}
