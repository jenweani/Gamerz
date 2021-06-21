import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'package:velocity_x/velocity_x.dart';
import 'sections.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Row(
          children: [NavBar(), Home()],
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * 0.1,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(right: BorderSide(color: Colors.white30, width: 0.5))),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: 780,
          child: Column(
            children: [
              40.heightBox,
              CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('images/playstation.png'),
              ),
              80.heightBox,
              NavItem(
                iconData: Icons.home_filled,
                isSelected: true,
              ),
              NavItem(
                iconData: Icons.videogame_asset_outlined,
                isSelected: false,
              ),
              NavItem(
                iconData: Icons.shopping_bag_outlined,
                isSelected: false,
              ),
              NavItem(
                iconData: Icons.camera_alt_outlined,
                isSelected: false,
              ),
              NavItem(
                iconData: Icons.chat_bubble_outline_rounded,
                isSelected: false,
              ),
              NavItem(
                iconData: Icons.settings_outlined,
                isSelected: false,
              ),
              Spacer(),
              Icon(
                Icons.logout,
                color: Colors.white,
              ),
              60.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  NavItem({this.iconData, this.isSelected});
  final bool isSelected;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected ? kPrimaryColor : Colors.transparent,
      ),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 18,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * 0.9,
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              HeaderBar(),
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: size.height * 0.85,
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FirstItem(),
                            20.heightBox,
                            SecondItem(),
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                    height: size.height * 0.85,
                    color: Colors.transparent,
                    child: SideItem(),
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SideItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        children: [
          20.heightBox,
          SearchBox(),
          FavouriteSection(),
          20.heightBox,
          Spacer(),
          SupportTeam(),
          MessageBox(),
          20.heightBox,
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white12),
      ),
      child: Row(
        children: [
          Icon(Icons.search_rounded, size: 20, color: Colors.white38),
          15.widthBox,
          'Search Games'.text.size(10).color(Colors.white54).make(),
          // Spacer(),
          50.heightBox,
        ],
      ),
    );
  }
}

class FavouriteSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            20.widthBox,
            'Favourites'.text.size(10).white.make(),
            5.widthBox,
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white70,
              size: 15,
            )
          ],
        ),
        Container(
          child: Column(
            children: favourites
                .map((e) => FavouriteItem(
                      name: e['name'],
                      image: e['image'],
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class FavouriteItem extends StatelessWidget {
  FavouriteItem({this.name, this.image});
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // width: 200,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 35,
          margin: EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey),
        ),
        title: name.text.minFontSize(9).maxFontSize(10).white.make(),
        subtitle: 'Download 202k'
            .text
            .color(kPrimaryColor)
            .minFontSize(5)
            .maxFontSize(10)
            .make(),
        trailing: Icon(
          Icons.more_vert,
          color: Colors.white38,
          size: 20,
        ),
      ),
    );
  }
}

List<Map> favourites = [
  {
    'name': 'Neptune\'s Riches',
    'image': 'images/Neptune.jpg',
  },
  {
    'name': 'Scratch Ahoy',
    'image': 'images/scratch-ahoy.jpg',
  },
  {
    'name': 'Yucatan\'s Mystery',
    'image': 'images/Yucatan.jpg',
  },
  {
    'name': 'GAM Royal Seven XXL',
    'image': 'images/Royal.jpg',
  },
  {
    'name': 'Vikings Wild Scratch',
    'image': 'images/Viking.jpg',
  },
  {
    'name': 'America\'s Army',
    'image': 'images/AArmy.jpg',
  },
];

List<Map> mostPlayed = [
  {
    'name': 'America\'s Army',
    'image': 'images/AArmy.jpg',
    'console': 'PS5 Only',
    'date': '15 June',
    'year': '2021',
  },
  {
    'name': 'Command and Counter',
    'image': 'images/command.jpg',
    'console': 'PS5 Only',
    'date': '21 June',
    'year': '2021',
  },
  {
    'name': 'Yucatan\'s Mystery',
    'image': 'images/Yucatan.jpg',
    'console': 'PS5 and PS4',
    'date': '22 June',
    'year': '2021',
  },
];
