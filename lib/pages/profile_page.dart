import 'package:flutter/material.dart';
import 'package:projects/components/toolbar.dart';
import 'package:projects/components/user_avatar.dart';
import 'package:projects/config/app_routes.dart';
import 'package:projects/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print('logout');
                default:
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text('Log out'),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Vang Vironsard",
            style: AppText.header2, 
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Phnom Penh",
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '6000',
                    style: AppText.header2,
                  ),
                  Text(
                    'Post',
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '300',
                    style: AppText.header2,
                  ),
                  Text(
                    'Followers',
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '9000',
                    style: AppText.header2,
                  ),
                  Text(
                    'Following',
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
