import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plasts_app/constants.dart';
import 'package:plasts_app/ui/screens/cart_page.dart';
import 'package:plasts_app/ui/screens/favorite_page.dart';
import 'package:plasts_app/ui/screens/home_page.dart';
import 'package:plasts_app/widgets/profil_widgets.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          height: size.height * 1.5,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent,
                  backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Constants.primaryColor, width: 5.0),
                ),
              ),
              SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pahrizal',
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Image.asset('assets/images/verified.png'),
                    )
                  ],
                ),
              ),
              Text(
                'pahrizal480@gmail.com',
                style: TextStyle(
                  color: Constants.blackColor,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileWidget(icon: Icons.person, title: 'My Profil'),
                    ProfileWidget(icon: Icons.settings, title: 'Setinggs'),
                    ProfileWidget(
                        icon: Icons.notifications, title: 'Notifikasion'),
                    ProfileWidget(icon: Icons.chat, title: 'FaQs'),
                    ProfileWidget(icon: Icons.share, title: 'Share'),
                    ProfileWidget(icon: Icons.logout, title: 'Logout'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
