import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projects/components/post_item.dart';
import 'package:projects/components/toolbar.dart';

import '../config/app_routes.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});
  List users = [];
  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: "Songkum Khmer",
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: SvgPicture.asset('assets/svg/ic_location.svg'),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 20,
          );
        },
      ),
    );
  }

  mockUserFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}
