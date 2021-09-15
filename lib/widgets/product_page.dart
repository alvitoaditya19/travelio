import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:travelio/shared/theme.dart';

class ProductPage extends StatelessWidget {
  final String imageUrl;
  final String nameTower;
  List<Widget> widgets = List.generate(
      5,
      (index) => Icon(
            MdiIcons.star,
            color: Colors.yellow,
            size: 24,
          ));

  ProductPage(this.imageUrl, this.nameTower);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        vertical: 8,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: backgroundColor3, borderRadius: BorderRadius.circular(24)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,
            height: 126,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 6,
              ),
              Text(
                nameTower,
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'London, England',
                style: mainTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: widgets,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Text(
                      '4/5',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
