import 'package:flutter/material.dart';
import 'package:travelio/shared/theme.dart';
import 'package:travelio/widgets/bottom_nabar_item.dart';
import 'package:travelio/widgets/product_page.dart';
import 'package:travelio/widgets/town_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: backgroundColor2,
                size: 40,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Justin',
                    style: mainTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Traveller',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: backgroundColor2,
                      width: 3.0,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/image_profile.png',
                    )))),
          ],
        ),
      );
    }

    Widget categories_widget(int index, String country) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 36,
            vertical: 10,
          ),
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selectedIndex == index ? backgroundColor2 : Colors.white,
              border: Border.all(
                color: backgroundColor2,
                width: 2,
              )),
          child: Text(
            country,
            style: selectedIndex == index ? thirdTextStyle : mainTextStyle,
          ),
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 18,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              categories_widget(0, 'Europa'),
              categories_widget(1, 'Ausralia'),
              categories_widget(2, 'Asia'),
              categories_widget(3, 'Africa'),
              SizedBox(
                width: 18,
              ),
            ],
          ),
        ),
      );
    }

    Widget searchDestination() {
      return Container(
        height: 40,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 25,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(children: [
          SizedBox(
            width: 12,
          ),
          Image.asset(
            'assets/search.png',
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextFormField(
              style: secondaryTextStyle,
              decoration: InputDecoration.collapsed(
                hintText: 'Find a Magical Place',
                hintStyle: grayTextStyle,
              ),
            ),
          )
        ]),
      );
    }

    Widget recommendedTitle() {
      return Container(
        margin:
            EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Recommended',
                style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              'See All',
              style: mainTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
    }

    Widget recommended() {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              TownPage('assets/efel.png', 'Effel Tower'),
              TownPage('assets/image_fuji.jpg', 'Fuji Mountain'),
              TownPage('assets/image_marina.jfif', 'Marina Bay Sands'),
              SizedBox(
                width: 14,
              ),
            ],
          ),
        ),
      );
    }

    Widget desTitle() {
      return Container(
        margin:
            EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Europe',
                style: secondaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
            ),
            Icon(
              Icons.fiber_manual_record,
              size: 30,
              color: backgroundColor2,
            ),
            Icon(
              Icons.fiber_manual_record,
              size: 30,
              color: backgroundColor2,
            ),
          ],
        ),
      );
    }

    Widget product() {
      return Container(
        child: Column(children: [
          ProductPage('assets/england.png', 'Big Benn London'),
          ProductPage('assets/image_fuji.jpg', 'Fuji Mountain'),
          ProductPage('assets/image_marina.jfif', 'Marina Bay Sands'),
        ]),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          categories(),
          searchDestination(),
          recommendedTitle(),
          recommended(),
          desTitle(),
          product(),
        ],
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
