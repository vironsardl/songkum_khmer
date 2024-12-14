import 'package:flutter/material.dart';
import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/img-temp1.jpg',
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(
            height: 12,
          ),
          Text('The sun is a daily reminder that we too can rise from the darkness. that we too can shine our won light',
          style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
