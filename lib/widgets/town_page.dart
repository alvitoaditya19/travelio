import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travelio/shared/theme.dart';

class TownPage extends StatelessWidget {
  final String imageUrl;
  final String nameTower;
  List<Widget> widgets = List.generate(
      5,
      (index) => Icon(
            MdiIcons.star,
            color: Colors.yellow,
            size: 18,
          ));

  TownPage(this.imageUrl, this.nameTower);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        color: backgroundColor3,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130.0,
            width: 130.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
            ),
            child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 36,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MdiIcons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Text(
                        '4/5',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            nameTower,
            style: secondaryTextStyle.copyWith(fontWeight: medium),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Row(children: widgets),
              SizedBox(
                width: 4,
              ),
              Text(
                '4/5',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
