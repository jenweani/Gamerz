import 'package:flutter/material.dart';
import 'package:gaming_app/dashboard/dashboard.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:gaming_app/constants.dart';

class MessageBox extends StatelessWidget {
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
          10.widthBox,
          'Search Games'.text.size(10).color(Colors.white54).make(),
          Spacer(),
          Icon(Icons.send_rounded, size: 14, color: kPrimaryColor),
          10.widthBox,
        ],
      ),
    );
  }
}

class SupportTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        20.widthBox,
        'Support Team'.text.size(12).white.make(),
        Spacer(),
        Container(
          width: 30,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 6,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/person2.jpg'),
              ),
              Positioned(
                  right: 1,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('images/person2.jpg'),
                  )),
              Positioned(
                  right: 10,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('images/person3.jpg'),
                  )),
            ],
          ),
        ),
        20.widthBox,
      ],
    );
  }
}

class SecondItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Most Played Games'.text.white.bold.size(15).make(),
          10.heightBox,
          Column(
            children: mostPlayed
                .map((e) => MostPlayedItem(
                      name: e['name'],
                      description: e['console'],
                      date: e['date'],
                      year: e['year'],
                      image: e['image'],
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}

class MostPlayedItem extends StatelessWidget {
  MostPlayedItem(
      {this.name, this.description, this.date, this.year, this.image});
  final String name;
  final String description;
  final String date;
  final String year;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 700),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 38,
          margin: EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey),
        ),
        title: Container(
          height: 50,
          width: 200,
          child: Row(
            children: [
              Container(
                width: 160,
                child: ListTile(
                  title: name.text.size(10).white.make(),
                  subtitle:
                      description.text.size(10).color(Colors.white54).make(),
                ),
              ),
              40.heightBox,
              Container(
                width: 100,
                child: ListTile(
                  title: date.text.size(10).white.make(),
                  subtitle: year.text.size(10).color(Colors.white54).make(),
                ),
              )
            ],
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: CustomButton(
            height: 30,
            width: 30,
            isRounded: true,
            child: Center(
                child: Icon(
              Icons.cloud_download_rounded,
              size: 14,
              color: Colors.white54,
            )),
          ),
        ),
      ),
    );
  }
}

class FirstItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 700,
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/cod.jpg'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          VxGlassmorphic(
            height: 330,
            width: 250,
            blur: 8,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  CustomButton(
                    isRounded: false,
                    height: 20,
                    width: 50,
                    child: Center(
                        child: 'NEW'
                            .text
                            .white
                            .minFontSize(5)
                            .maxFontSize(10)
                            .bold
                            .make()),
                  ),
                  25.heightBox,
                  'Call of Duty 2022'.text.white.bold.size(15).make(),
                  6.heightBox,
                  'Lorem ipusm At vero eos et '
                      .text
                      .color(Colors.white54)
                      .size(10)
                      .make(),
                  'iusto odio dignissimos ducimus'
                      .text
                      .color(Colors.white54)
                      .size(10)
                      .make(),
                  'praesentium voluptatum deleniti'
                      .text
                      .color(Colors.white54)
                      .size(10)
                      .make(),
                  'quos dolores et quas molestias '
                      .text
                      .color(Colors.white54)
                      .size(10)
                      .make(),
                  'occaecati cupiditate non provident, '
                      .text
                      .color(Colors.white54)
                      .size(10)
                      .make(),
                  10.heightBox,
                  CustomButton(
                    isRounded: true,
                    height: 30,
                    width: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud_download_rounded,
                          color: Colors.white70,
                          size: 14,
                        ),
                        10.widthBox,
                        'Download'.text.white.size(10).make(),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          8.widthBox,
          HBarItem(
            title: 'LeaderBoard',
            isSelected: false,
          ),
          HBarItem(
            title: 'News',
            isSelected: false,
          ),
          HBarItem(
            title: 'Shop',
            isSelected: false,
          ),
          HBarItem(
            title: 'FAQ',
            isSelected: false,
          ),
          HBarItem(
            title: 'Community',
            isSelected: true,
          ),
          Spacer(),
          ActivityUI(
            iconData: Icons.shopping_cart_outlined,
            hasNewActivity: false,
          ),
          ActivityUI(
            iconData: Icons.notifications,
            hasNewActivity: true,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('images/myPik.jpg'),
          ),
          30.widthBox
        ],
      ),
    );
  }
}

class HBarItem extends StatelessWidget {
  HBarItem({this.title, this.isSelected});
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: title.text
          .size(15)
          .color(isSelected ? kPrimaryColor : Colors.white)
          .make(),
    );
  }
}

class ActivityUI extends StatelessWidget {
  ActivityUI({this.iconData, this.hasNewActivity});
  final IconData iconData;
  final bool hasNewActivity;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.only(top: 10),
      // margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Icon(
            iconData,
            size: 20,
            color: Colors.white,
          ),
          if (hasNewActivity)
            Positioned(
                right: 22,
                child: CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  radius: 4,
                ))
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({this.isRounded, this.height, this.width, this.child});
  final bool isRounded;
  final double height;
  final double width;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(isRounded ? 50 : 5),
      ),
      child: child,
    );
  }
}
