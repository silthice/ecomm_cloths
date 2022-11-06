import 'package:ecomm_cloths/models/clothes.dart';
import 'package:ecomm_cloths/screens/detail/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;
  ClothesItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(clothes),
          ));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(clothes.imgUrl),
                            fit: BoxFit.fitHeight)),
                  ),
                  Positioned(
                      top: 15,
                      right: 20,
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 15,
                          )))
                ],
              ),
              Text(
                clothes.title,
                style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
              ),
              Text(
                clothes.subtitle,
                style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
              ),
              Text(
                clothes.price,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
