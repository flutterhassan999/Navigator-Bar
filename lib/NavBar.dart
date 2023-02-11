// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/feedback.dart';
import 'feedback.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 290,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Hassan Raza'),
            accountEmail: const Text('softwarelover72@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://th.bing.com/th/id/R.90bb45394f754659b658c4150662c14e?rik=J9eEci9X5U7Oag&pid=ImgRaw&r=0',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image:  DecorationImage(
                  image: const NetworkImage(
                      'https://th.bing.com/th/id/R.09c8cb0feaf7f6478cdcbc80146998a1?rik=XuXiKZZ2I85gaQ&pid=ImgRaw&r=0',
                  ),
                  fit: BoxFit.cover,
                  ),
            ),
          ),
          ListTile(
            leading:const Icon(Icons.feedback),
            title:const Text('Feedback'),
            // ignore: avoid_returning_null_for_void
            onTap: ()=>FeedBack(),
          ),
          const Divider(),
           ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            // ignore: avoid_returning_null_for_void
            onTap: ()=>null,
          ),
           const Divider(),
           ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            // ignore: avoid_returning_null_for_void
            onTap: ()=>null,
          ),
           const Divider(),
           ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            trailing:ClipOval(
              child: Container(
                color: Colors.red,
                width: 18,
                height: 18,
                child: const Center(
                  child: Text(
                    '7',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
            // ignore: avoid_returning_null_for_void
            onTap: ()=>null,
          ),
           const Divider(),
           ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            // ignore: avoid_returning_null_for_void
            onTap: ()=>null,
          ),
        ],
      ),
    );
  }
}
